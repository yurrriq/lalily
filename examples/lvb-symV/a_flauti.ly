\version "2.18.0"

flauti = {
  \set Staff.instrumentName = "Flauti."
  \set Staff.midiInstrument = "flute"
  \clef treble
  \key c \minor
  \time 2/4
  \override Score.MetronomeMark.transparent = ##t
  \tempo 2 = 96
  \once \override TextScript.padding = #2.5
  \repeat volta 2 {
    r2^\markup { \bold "Allegro con brio." } r2^\fermata R2 R2 r2^\fermata R2 R2 R2 R2 R2 R2 R2 R2
    R2 R2 R2 R2 r8 <d''' g'''>8_\markup { \italic "p cresc." }[ <d''' g'''> <d''' f'''>]
    <c''' ees'''>4\f r << { c'''4 } \\ { c'''4 } >> r4 <b'' g'''> r4^\fermata
    r8 << { aes''8[ aes'' aes''] f''2~ f''2^\fermata } \\ { aes''8\ff[ aes'' aes''] f''2~ f''2 } >>
    R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
    << { c'''4\sf g''4\rest c'''4\sf g''4\rest c'''4\sf g''4\rest c'''4\sf g''4\rest } \\ { R2 R2 R2 R2 } >> <b'' d'''>4\sf r4
    <c''' ees'''>2\f~ <c''' ees'''>~ <c''' ees'''>~ <c''' ees'''> <d''' f'''>2~ <d''' f'''>~ <d''' f'''>~ <d''' f'''>4 <c''' ees'''>4
    <c''' ees'''>2\ff~ <c''' ees'''>~ <c''' ees'''>~ <c''' ees'''> <a'' ges'''>4 r4 R2 << { bes''4 } \\ { bes''4 } >> r4
    R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 << { bes''4\p( ees''' d''' ees''' f''' c''') c'''( bes'') } \\ { R2 R2 R2 R2 } >>
    R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
    << { \crescTextCresc ees'''4\<( f''' ges''' f''' ges''' aes'''\!) } \\ { R2 R2 R2 } >>
    <bes'' f'''>2\ff~ <bes'' f'''>4 <bes'' f'''> <bes'' g'''!>4 r <bes'' f'''> r <bes'' ees'''> r <c''' ees'''> r <bes'' ees'''> r <bes'' d'''> r
    <bes'' f'''>2\ff~ <bes'' f'''>2 <bes'' g'''>4 <bes'' g'''> r <bes'' d'''> r <bes'' ees'''> r <aes'' ees'''> r <bes'' ees'''> r <bes'' d'''>
    <bes'' ees'''>8 <<
      {
        g'''8[ g''' g'''] ees''' bes''[ bes'' bes''] g'' ees''[ ees'' ees''] bes'2~ bes'8 g'''8[ g''' g''']
        ees'''8 bes''[ bes'' bes''] g'' ees''[ ees'' ees''] bes'2~ bes'4
      } \\
      {
        g'''8[ g''' g'''] ees''' bes''[ bes'' bes''] g'' ees''[ ees'' ees''] bes'2~ bes'8 g'''8[ g''' g''']
        ees''' bes''[ bes'' bes''] g'' ees''[ ees'' ees''] bes'2~ bes'4
      }
    >> r4
    r8 << { bes''8[ bes'' bes''] bes''4 } \\ { bes''8[ bes'' bes''] bes''4 } >> r4 r8 <f'' d'''>8[ <f'' d'''> <f'' d'''>] <g'' ees'''>4 r4 R2 R2
  }

  R2 R2 R2 r2^\fermata R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
  <<
    {
      f''8\rest d'''8\p[ d''' c'''] bes''2 a''8[ d''' d''' c'''] bes''2 a''2 bes''2~ bes''8[ g'' a'' bes''] c'''4 f''4\rest
      f''8\rest fis''[ a'' bes''] c'''4 f''4\rest f''8\rest a''8[ bes'' c'''] d'''4 f''4\rest f''8\rest g''8[ bes'' c'''] d'''4 f''4\rest
      f''8\rest bes''8_\markup { \italic "cresc." }[ c''' d''']
    } \\ { R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 }
  >>
  <a'' ees'''>2\f~ <a'' ees'''>2 <a'' ees'''>4 r r8 <g'' e'''>8[ <g'' e'''> <g'' e'''>] <g'' e'''>2~ <g'' e'''>2 <g'' e'''>4 r
  \set crescendoText = \markup { \italic "piu f" } \set crescendoSpanner = #'text
  r8 <bes'' d'''>8\<[ <bes'' d'''> <bes'' d'''>] <bes'' d'''>4 r r <cis'' cis'''>8 <cis'' cis'''>
  <cis'' cis'''>4 <d'' d'''>8 <d'' d'''> <d'' d'''>4\! r R2 R2 R2 R2 R2 R2 r4 << { d'''8[ d'''] } \\ { d'''8[ d'''] } >> <d''' g'''>4 r R2 R2
  R2 R2 R2 R2 r4 <b'' d'''>8 <b'' d'''> <c''' e'''>8 << { c'''8[ c''' c'''] f''2 g'' } \\ { c'''8\ff[ c''' c'''] f''2 g'' } >> R2 R2
  << { f''2 g'' } \\ { f''2 g'' } >> R2 R2 << { f''2 ges'' } \\ { f''2 ges'' } >> R2 R2 << { a''2 bes'' } \\ { a''2 bes'' } >>
  R2 << { ces'''2_\markup { \italic "dimin." } } \\ { R2 } >> R2 << { des'''2 } \\ { R2 } >> R2
  << { des'''2\p } \\ { R2 } >> R2 << { des'''2_\markup { \italic "sempre piu p" } } \\ { R2 } >> R2 << { des'''2 } \\ { R2 } >> R2
  << { d'''!2\pp } \\ { R2 } >> R2 << { d'''2 } \\ { R2 } >> R2 << { d'''2 } \\ { R2 } >> R2 << { d'''2 } \\ { R2 } >>
  r8 << { d'''8[ d''' d'''] } \\ { d'''8\ff[ d''' d'''] } >> <b'' d'''>2 <c''' d'''> <a'' d'''>2~ <a'' d'''>2
  << { d'''2\pp } \\ { R2 } >> R2 << { d'''2 } \\ { R2 } >> R2 << { d'''2 } \\ { R2 } >> R2 << { d'''2 } \\ { R2 } >> R2
  r8 <aes'' aes'''>8\ff[ <aes'' aes'''> <aes'' aes'''>] <f'' f'''>2~ <f'' f'''>8 <aes'' aes'''>8[ <aes'' aes'''> <aes'' aes'''>]
  <f'' f'''>2~ <f'' f'''>8 <aes'' aes'''>8[ <aes'' aes'''> <aes'' aes'''>] <f'' f'''> <aes'' aes'''>8[ <aes'' aes'''> <aes'' aes'''>]
  <f'' f'''>8[ <aes'' aes'''>8 <aes'' aes'''> <aes'' aes'''>] <f'' f'''> <g'' g'''>[ <g'' g'''> <g'' g'''>] <ees''' g'''>2^\fermata
  r8 <f''' g'''>8[ <f''' g'''> <f''' g'''>] <d''' g'''>2~ <d''' g'''>2^\fermata R2 R2 R2 R2 R2 R2 R2
  << { f'2~ f'2 ees'4 } \\ { f'2\p~ f'2 ees'4 } >> r4 R2 R2 R2 R2 <fis'' c'''>2_\markup { \italic "cresc." }

  \cadenzaOn <g'' b''>4\f s4 s2 s2 r4^\fermata s2 s4 \cadenzaOff \bar "|"
  R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
  << { c'''4\sf f''4\rest c'''\sf f''\rest c'''\sf f''\rest c'''\sf f''\rest } \\ { R2 R2 R2 R2 } >> <b'' d'''>4\sf r4
  <c''' ees'''>2\f~ <c''' ees'''>~ <c''' ees'''>~ <c''' ees'''> <d''' f'''>2~ <d''' f'''>~ <d''' f'''>~ <d''' f'''>4 <c''' ees'''>
  <c''' fis'''>2\ff~ <c''' fis'''>~ <c''' fis'''>~ <c''' fis'''> <c''' fis'''>4 r R2 <g'' g'''>4 r4 R2 R2 R2
  R2 R2 R2 R2 R2 << { g''4\p( c''' b'' c''' d''' a'') a''4( g'') } \\ { R2 R2 R2 R2 } >> R2 R2 R2 R2
  << { g''4( c''' b'' c''' d''' a'') a''4( g'') } \\ { R2 R2 R2 R2 } >> R2 R2 << { bes''!4( c''' bes'' a'') } \\ { R2 R2 } >>
  R2 R2 << { c'''4( d''' c''' b'') } \\ { R2 R2 } >> R2 R2 R2 R2 R2 R2 R2
  <<
    { \crescTextCresc aes'''4\<( g''' fis''' g''') a'''( g''' fis''' g''') a'''( g''' fis''' g''' fis''' g''' fis''' g'''\!) } \\
    { R2 R2 R2 R2 R2 R2 R2 R2 }
  >> <f'''! g'''>2\ff~ <f''' g'''>4 <f''' g'''> <e''' g'''>4 r <b'' g'''> r <c''' g'''> r
  <c''' a'''>4 r <e''' g'''> r << { g'''8([ fis''' g''' fis''']) } \\ { b''4 b'4\rest } >> <f'''! g'''>2~ <f''' g'''>
  <e''' g'''>4 <e''' g'''> r <b'' g'''> r <c''' g'''> r <d''' f'''> r <e''' g'''> r <d''' g'''>
  <<
    { c'''8 e'''[ e''' e'''] c''' g''[ g'' g''] e'' c''[ c'' c''] g'2~ g'8 e'''8[ e''' e'''] c'''8 g''[ g'' g''] e'' c''[ c'' c''] g' } \\
    { c'''8 e'''[ e''' e'''] c''' g''[ g'' g''] e'' c''[ c'' c''] g'2~ g'8 e'''8[ e''' e'''] c'''8 g''[ g'' g''] e'' c''[ c'' c''] g' }
  >>
  <d'' g''>8[ <d'' g''> <d'' g''>] <e'' g''>4 r r8 <d'' g''>8[ <d'' g''> <d'' g''>] <e'' g''>4 r
  r8 <d'' b''>[ <d'' b''> <d'' b''>] <e'' c'''> <c'' c'''>[ <c'' c'''> <c'' c'''>] <c'' c'''>2~ <c'' c'''>2:8
  <c'' c'''>2~ <c'' c'''>2:8 <c'' c'''>2~ <c'' c'''>2:8 <c'' c'''>2
  <aes'' des'''>2~ <aes'' des'''>~ <aes'' des'''>~ <aes'' des'''> <aes'' des'''>4 r4 R2
  R2 R2 r8 <c''' ees'''>\ff[ <c''' ees'''> <c''' ees'''>] <c''' ees'''>2~ <c''' ees'''>2~ <c''' ees'''>2~ <c''' ees'''>2
  <c''' ees'''>4 r4 r8 << { c'''8[ c''' c'''] ees'''4 } \\ { c'''8[ c''' c'''] ees'''4 } >> r4 R2 R2 R2 <b'' f'''>2~ <b'' f'''>
  R2 R2 <b'' f'''>2~ <b'' f'''> R2 R2
  <<
    { ees'''4 f''' d''' ees''' c''' d''' bes'' c''' aes'' bes'' g'' aes'' f'' g'' g'' g'' g'' g'' g'' c''' c''' c''' c''' } \\
    { R2 R2 R2 R2 R2 R2 f''4 g'' g'' g'' g'' g'' g'' c''' c''' c''' c''' }
  >> <b'' f'''>4 <c''' f'''> <b'' f'''> <c''' f'''> <d''' f'''>
  <c''' ees'''>2~ <c''' ees'''> <c''' f'''>~ <c''' f'''> <c''' g'''>~ <c''' g'''> <c''' f'''>~ <c''' f'''> <d''' f'''> <d''' g'''>
  <ees''' g'''>4\staccato r <ees''' aes'''>\staccato r <d''' aes'''>\staccato r <d''' aes'''>\staccato r
  <d''' g'''>\staccato r <d''' g'''>\staccato r
  << { c'''2 d'''4\staccato ees'''\staccato f'''( d''') } \\ { c'''2\ff d'''4 ees''' f''' d''' } >> R2 R2
  <f'' f'''>4\staccato <g'' g'''>\staccato <aes'' aes'''>( <f'' f'''>)
  R2 R2 <a'' c'''>4\staccato <b'' d'''>\staccato <c''' ees'''>( <g'' c'''>) R2 R2
  <a'' c'''>4\staccato <b'' d'''>\staccato
  <c''' ees'''>( <bes''! d'''> <aes''! c'''> <g'' bes''> <f'' aes''> <ees'' g''>) R2
  <f'' aes''>4\sf( <ees'' g''>) <f''' aes'''>( <ees''' g'''>) r4 <c''' g'''> r <d''' g'''>
  R2 R2 R2 << { aes''4( g'') } \\ { aes''4( g'') } >> R2 <f''' aes'''>4( <ees''' g'''>)
  r4 <ees''' g'''> r <d''' g'''> << { c'''4 } \\ { c'''4 } >> r4 r8 <d''' g'''>[ <d''' g'''> <d''' g'''>]
  << { g'''2~ g'''2~ g'''2~ g'''2 } \\ { d'''2~ d'''4( ees''' f''' d''' ees''' f''') } >>
  <ees''' g'''>4 r r8 <g'' g'''>[ <g'' g'''> <g'' g'''>] <g'' g'''>2:8 <g'' g'''>2:8 <ees''' g'''>2\ff^\fermata
  r8 <f''' g'''>[ <f''' g'''> <f''' g'''>] <d''' g'''>2~ <d''' g'''>2^\fermata R2 R2 R2 R2 R2 R2 R2
  R2 r8 <b'' d'''>[ <b'' d'''> <b'' d'''>] <c''' ees'''>4 r r8 <b'' d'''>[ <b'' d'''> <b'' d'''>] <c''' ees'''>4 r
  r8 <b'' d'''>[ <b'' d'''> <b'' d'''>] <c''' ees'''>4 <d''' g'''> <ees''' g'''> <d''' g'''>
  <ees''' g'''>4 <d''' g'''> <ees''' g'''> <d''' g'''> <ees''' g'''> r <g'' b''> r <g'' c'''> r \bar "|."
}

%{
/usr/bin/python: /home/jpv/lily2.18/lilypond/usr/lib/libz.so.1: no
version information available (required by /usr/bin/python) convert-ly
(GNU LilyPond) 2.18.2  convert-ly: »« wird verarbeitet... Anwenden der
Umwandlung: 2.11.2, 2.11.3, 2.11.5, 2.11.6, 2.11.10, 2.11.11, 2.11.13,
2.11.15, 2.11.23, 2.11.35, 2.11.38, 2.11.46, 2.11.48, 2.11.50,
2.11.51, 2.11.52, 2.11.53, 2.11.55, 2.11.57, 2.11.60, 2.11.61,
2.11.62, 2.11.64, 2.12.0, 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10,
2.13.16, 2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31, 2.13.36,
2.13.39, 2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0,
2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18, 2.15.19, 2.15.20,
2.15.25, 2.15.32, 2.15.39, 2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0,
2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19,
2.17.20, 2.17.25, 2.17.27, 2.17.29, 2.17.97, 2.18.0
%}
