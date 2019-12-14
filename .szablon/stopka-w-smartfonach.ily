\version "2.17.3"

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