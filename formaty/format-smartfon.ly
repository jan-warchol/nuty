\version "2.17.3"
\bookOutputSuffix "smartfon"

#(set-global-staff-size 16)


\paper {
  paper-height = 9 \cm
  paper-width = 16 \cm
  indent = 0 \mm
  left-margin = 7.5 \mm
  right-margin = 5 \mm
  top-margin = 3 \mm
  bottom-margin = 2 \mm
  top-markup-spacing #'basic-distance = 0
  %top-markup-spacing #'padding = 0
  markup-system-spacing #'basic-distance = 0
  top-system-spacing #'basic-distance = 9
  system-system-spacing #'basic-distance = 17
  score-markup-spacing #'basic-distance = 13.5
  last-bottom-spacing #'padding = -2
  \include "uklad-tytulow.ily"
  % na ogół na pierwszej stronie nie ma miejsca, więc przesuwam na ostatnią
  % ugh, copy-paste.
  oddFooterMarkup = \markup {
    \column {
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \on-the-fly #last-page {
          \override #'(baseline-skip . 2)
          \center-column {
            \scale #'(0.9 . 0.9) \fromproperty #'header:copyright
            \scale #'(0.73 . 0.73) "Wspieraj twórców kupując oryginalne nuty!"
          }
        }
      }
      \fill-line {
        %% Tagline header field only on last page in the book.
        \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #-1
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #1
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "muzyka-i-tekst.ily"
\include "struktura-SATB-4-pieciolinie.ily"
\include "struktura-zwrotek.ily"
\include "globalne-ustawienia-formatowania.ily"
