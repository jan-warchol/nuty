\version "2.17.3"
\include "../szablon/formaty/default-tablet-paper.ily"
\bookOutputSuffix "tablet"

#(set-global-staff-size 15)

\paper {
  top-markup-spacing #'basic-distance = 5
  system-system-spacing #'basic-distance = 17
  score-markup-spacing #'basic-distance = 13.5
  last-bottom-spacing #'padding = -2
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #-0.5
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #1
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-4-pieciolinie.ily"
\include "../szablon/struktura-zwrotek.ily"
\include "specjalne-ustawienia-utworu.ily"
