\version "2.17.3"
\bookOutputSuffix "b5"

#(set-global-staff-size 16.5)
#(set-default-paper-size "b5")

\paper {
  indent = 0 \mm
  left-margin = 11 \mm
  right-margin = 10 \mm
  top-markup-spacing #'basic-distance = 7
  system-system-spacing #'basic-distance = 17
  score-markup-spacing #'basic-distance = 16
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #1
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #1.5
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-4-pieciolinie.ily"
\include "../szablon/struktura-zwrotek.ily"
