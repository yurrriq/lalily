%%%% This file is part of lalily, an extension to lilypond <http://www.lilypond.org/>.
%%%%
%%%% Copyright (C) 2011--2013 Jan-Peter Voigt <jp.voigt@gmx.de>
%%%%
%%%% lalily is free software: you can redistribute it and/or modify
%%%% it under the terms of the GNU General Public License as published by
%%%% the Free Software Foundation, either version 3 of the License, or
%%%% (at your option) any later version.
%%%%
%%%% lalily is distributed in the hope that it will be useful,
%%%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%%%% GNU General Public License for more details.
%%%%
%%%% You should have received a copy of the GNU General Public License
%%%% along with lalily.  If not, see <http://www.gnu.org/licenses/>.

\version "2.18.0"
% include "lalily.ly" from folder above
\include "../lalily.ly"
% include "templates-satb.ly" with template definition and music
\include "02_templates-satb.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this file shows, how to (re)define and register a template
% and how to use options


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% first we redefine the SATB template

% create a template for a SATB StaffGroup
\registerTemplate lalily.demo.choral.satb
#(define-music-function (parser location piece options)(list? list?)
   (let ((staffs (assoc-get 'staffs options '())))
     #{
       \new StaffGroup \with {
         % disable SpanBar like in ChoirStaff, but leave the possibility to display it with
         % \once \override StaffGroup.BarLine.allow-span-bar = ##t
         \override BarLine.allow-span-bar = ##f
       }
       % make SimultaneousMusic with all defined staffs
       % (make-music 'SimultaneousMusic 'elements <list of music expressions>
       $(make-music 'SimultaneousMusic
            'elements
            (map ; map creates a list with the result of the given function (lambda) for each element
             (lambda (staff) 
               (let ((staff_path (list (car staff)))
                     (staff_opts (cdr staff)))
               #{
               % the staff definition is a pair consisting of a key (car staff)
               % and the staff options (cdr staff)
               \callTemplate #'(.. staff) #staff_path #staff_opts
               #})) staffs))
     #}))

% use helper functions to create options
\clratree opts
\addatree opts staffs.sop.instrname "Sopran"
\addatree opts staffs.sop.shortname "S"
\addatree opts staffs.alt.instrname "Alt"
\addatree opts staffs.alt.shortname "A"
\addatree opts staffs.ten.instrname "Tenor"
\addatree opts staffs.ten.shortname "T"
\addatree opts staffs.ten.clef "G_8"
\addatree opts staffs.bas.instrname "Bass"
\addatree opts staffs.bas.shortname "B"
\addatree opts staffs.bas.clef "bass"

% we display the created Options here for debugging
#(display (format-alist opts))

% add/replace the newly created staffs option at current music-folder/path
\addOptions LY_LOCAL #opts

% instantiate this piece of music ... creates PDF, MIDI and a log file
% this only happens, if this file is compiled directly and not included!
% To check, if this is the case, the current outputname is compared to the current file name.
% If the outputname is changed, this may not work!
\lalilyTest

