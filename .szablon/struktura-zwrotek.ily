\version "2.17.3"

\markup {
  \fill-line {
    \scale #powiekszenie-zwrotek {
      \null

      \override #interlinia
      \column {
        \line {
          \bold
          "2."
          \odstepOdNumeruDoZwrotki
          \zwrotkaII
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "3."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIII
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "4."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIV
        }
        \odstepMiedzyZwrotkami
      }

      \null

      \override #interlinia
      \column {
        \line {
          \bold
          "5."
          \odstepOdNumeruDoZwrotki
          \zwrotkaV
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "6."
          \odstepOdNumeruDoZwrotki
          \zwrotkaVI
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "7."
          \odstepOdNumeruDoZwrotki
          \zwrotkaVII
        }
        \odstepMiedzyZwrotkami
      }

      \null
    }
  }
}