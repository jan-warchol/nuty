\version "2.17.3"

poziomyOdstepI = \markup \hspace #1
pionowyOdstepI = \markup \vspace #0.75

\markup {
  \vspace #2 % żeby nie zlewało się z nutami
  \fill-line {
    \large {
      \hspace #1

      \column {
        \line {
          \bold
          "2."
          \poziomyOdstepI
          \zwrotkaII
        }
        \pionowyOdstepI
        \line {
          \bold
          "3."
          \poziomyOdstepI
          \zwrotkaIII
        }
        \pionowyOdstepI
      }

      \hspace #3

      \column {
        \line {
          \bold
          "4."
          \poziomyOdstepI
          \zwrotkaIV
        }
        \pionowyOdstepI
        \line {
          \bold
          "5."
          \poziomyOdstepI
          \zwrotkaV
        }
        \pionowyOdstepI
      }

      \hspace #1
    }
  }
}