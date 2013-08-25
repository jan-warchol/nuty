\version "2.17.3"

#(set-global-staff-size 15)


\paper {
  paper-height = 20 \cm
  paper-width = 15 \cm
  indent = 0 \mm
  left-margin = 7.5 \mm
  right-margin = 5 \mm
  top-margin = 1 \mm
  bottom-margin = 2 \mm
  top-markup-spacing #'basic-distance = 5
  system-system-spacing #'basic-distance = 17
  score-markup-spacing #'basic-distance = 13.5
  last-bottom-spacing #'padding = -2
  \include "uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #-0.5
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
odstepMiedzyZwrotkami = \markup \vspace #1
odstepOdNumeruDoZwrotki = \markup \hspace #1

\bookOutputSuffix "tablet"
\include "muzyka-i-tekst.ily"
\include "struktura-SATB-4-pieciolinie.ily"
\include "ustawienia-formatowania.ily"
