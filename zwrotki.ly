\version "2.17.3"

\markup \vspace #1

pionowyOdstepI = \markup \vspace #0.75

\markup {
  \fill-line {
    \large {
      \hspace #1

      \column {
        \line {
          \bold
          "2."
          \hspace #1
          \zwrotkaII
        }
        \pionowyOdstepI
        \line {
          \bold
          "3."
          \hspace #1
          \zwrotkaIII
        }
        \pionowyOdstepI
      }

      \hspace #3

      \column {
        \line {
          \bold
          "4."
          \hspace #1
          \zwrotkaIV
        }
        \pionowyOdstepI
        \line {
          \bold
          "5."
          \hspace #1
          \zwrotkaV
        }
        \pionowyOdstepI
      }

      \hspace #1
    }
  }
}