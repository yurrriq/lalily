\version "2.18.2"

#(define lalily-relincl-tmp (ly:get-option 'relative-includes))
#(ly:set-option 'relative-includes #t)
\include "../lalily.ly"
#(ly:set-option 'relative-includes lalily-relincl-tmp)

\registerTemplate lalily.drums
#(define-music-function (parser location piece options) (list? list?)
   (let* ((instrument-name (get-option 'instrument-name options #f))
          (short-name (get-option 'short-name options #f))
	  (context-mods (get-option 'context-mods options #f))
	  (staff-mods (get-option 'staff-mods options #f))
          (midi-instrument (get-option 'midi-instrument options #f))
          (up-mods (get-option 'up-mods options #f))
          (down-mods (get-option 'down-mods options #f)))
     #{
       \new DrumStaff \with {
         $(if (ly:context-mod? context-mods) context-mods)
         $(if (ly:context-mod? staff-mods) staff-mods)
         $(if (string? instrument-name) #{ \with { instrumentName = #instrument-name } #} #{ \with {} #})
         $(if (string? short-name) #{ \with { instrumentName = #short-name } #} #{ \with {} #})    
         \consists \editionEngraver $piece
        } <<
          \keepWithTag #'drums \getMusic #'(.. meta)
          \new DrumVoice \with {
            $(if (ly:context-mod? up-mods) up-mods)
            \consists \editionEngraver \musicPath up
          } { \voiceOne \keepWithTag #'drums-up \getMusic #'(up) }
          \new DrumVoice \with {
            $(if (ly:context-mod? down-mods) down-mods)
            \consists \editionEngraver \musicPath down
          } { \voiceTwo \keepWithTag #'drums-down \getMusic #'(down) }
        >>
      #}))
