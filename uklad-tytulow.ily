\version "2.17.3"

bookTitleMarkup = \markup {
  \override #'(baseline-skip . 3.5)
  \column {
    \fill-line { \fromproperty #'header:dedication }
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \huge \larger \larger \bold
        \fromproperty #'header:title
      }
      \fromproperty #'header:odsteppotytule
      \fill-line {
        \large \bold
        \fromproperty #'header:subtitle
      }
      \fill-line {
        \smaller \bold
        \fromproperty #'header:subsubtitle
      }
      \fill-line \general-align #Y #-1 {
        \left-column {
          \fromproperty #'header:poet
          \fromproperty #'header:meter
        }
        { \large \bold \fromproperty #'header:instrument }
        \override #'(baseline-skip . 2.4)
        \right-column {
          \fromproperty #'header:composer
          \fromproperty #'header:arranger
          \tiny \fromproperty #'header:editor
        }
      }
    }
  }
}

tagline = \markup {
  \pad-to-box #'(0 . 0) #'(0 . 1.6) {
    \with-url
    #"http://lilypond.org/"
    \scale #'(0.57 . 0.57)
    #(format #f "Nuty złożone w programie LilyPond v~a."
       (lilypond-version)
       )
  }
}

oddFooterMarkup = \markup {
  \column {
    \fill-line {
      %% Copyright header field only on first page in each bookpart.
      \on-the-fly #part-first-page {
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
