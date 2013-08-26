\version "2.17.3"
\include "../szablon/formaty/default-a4-paper.ly"

#(set-global-staff-size 18)

\paper {
  top-markup-spacing #'basic-distance = 10
  system-system-spacing #'basic-distance = 18
  score-markup-spacing #'basic-distance = 18
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #2
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #2
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-4-pieciolinie.ily"
\include "../szablon/struktura-zwrotek.ily"
\include "specjalne-ustawienia-utworu.ily"
