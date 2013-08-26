\version "2.17.3"
\bookOutputSuffix "a5"

#(set-global-staff-size 15)
#(set-default-paper-size "a5")

\paper {
  indent = 2 \mm
  short-indent = 2 \mm
  left-margin = 10 \mm
  right-margin = 10 \mm
  top-markup-spacing #'basic-distance = 5
  system-system-spacing #'basic-distance = 17
  score-markup-spacing #'basic-distance = 16
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #1
}

#(define powiekszenie-zwrotek '(1.02 . 1.02))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #1
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-4-pieciolinie.ily"
\include "../szablon/struktura-zwrotek.ily"
\include "specjalne-ustawienia-utworu.ily"
