\version "2.17.3"
#(set-global-staff-size 17)

\paper {
  indent = 0 \mm
  left-margin = 16 \mm
  right-margin = 15 \mm
  system-system-spacing #'basic-distance = 16
  top-markup-spacing #'basic-distance = 6
}

\header	{
  title = ""
  poet = ""
  composer = ""
}
%--------------------------------MELODIA
melodiaSopranu = \relative f' {
  \bar "|."
}
melodiaAltu = \relative f' {
  \bar "|."
}
melodiaTenorow = \relative f {
  \bar "|."
}
melodiaBasow = \relative f {
  \bar "|."
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1. "
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup {
}
zwrotkaIII = \markup {
}
zwrotkaIV = \markup {
}
zwrotkaV = \markup {
}

%--------------------------------CAŁOŚĆ

\score {
  \new ChoirStaff <<
    % \new ChordNames { \germanChords \akordy }
    \new Staff = sopran {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = sopran {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp
        \tupletUp
        \melodiaSopranu
      }
    }
    \addlyrics \tekstSopranu

    \new Staff = alt {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alt {
        \set Voice.midiInstrument = "english horn"
        \dynamicUp
        \tupletUp
        \melodiaAltu
      }
    }
    \addlyrics \tekstAltu

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \dynamicUp
        \tupletUp
        \melodiaTenorow
      }
    }
    \addlyrics \tekstTenorow

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bas {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp
        \tupletUp
        \melodiaBasow
      }
    }
    \addlyrics \tekstBasow
  >>

  \layout {
    \compressFullBarRests
    \context {
      \Staff
      \consists "Ambitus_engraver"
    }
    \context {
      \Lyrics
      \override LyricSpace #'minimum-distance = #2
      \override VerticalAxisGroup
      #'nonstaff-unrelatedstaff-spacing #'padding = #0.75
    }
  }
}

\markup \vspace #1

\markup {
  \fill-line {
    \large {
      \hspace #0.1

      \column {
        \line {
          \bold
          "2."
          \hspace #1
          \zwrotkaII
        }
        \vspace #0.75
        \line {
          \bold
          "3."
          \hspace #1
          \zwrotkaIII
        }
      }

      \hspace #0.1

      \column {
        \line {
          \bold
          "4."
          \hspace #1
          \zwrotkaIV
        }
        \vspace #0.75
        \line {
          \bold
          "5."
          \hspace #1
          \zwrotkaV
        }
      }

      \hspace #0.1
    }
  }
}