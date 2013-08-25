\version "2.17.3"

#(set-global-staff-size 15)
#(set-default-paper-size "a5")

\paper {
  indent = 0 \mm
  left-margin = 11 \mm
  right-margin = 10 \mm
  top-markup-spacing #'basic-distance = 5
  system-system-spacing #'basic-distance = 17
  score-markup-spacing #'basic-distance = 16
  \include "uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #1
}

#(define powiekszenie-zwrotek '(1.02 . 1.02))
odstepMiedzyZwrotkami = \markup \vspace #1
odstepOdNumeruDoZwrotki = \markup \hspace #1

\bookOutputSuffix "a5"
\include "muzyka-i-tekst.ily"
\include "struktura-SATB-4-pieciolinie.ily"
\include "ustawienia-formatowania.ily"
