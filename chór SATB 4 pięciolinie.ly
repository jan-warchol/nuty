\version "2.17.3"

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
    \override NoteHead #'style = #'altdefault
    \context {
      \Staff
      \consists "Ambitus_engraver"
    }
    \context {
      \Lyrics
      \override LyricSpace #'minimum-distance = #0.7
      \override VerticalAxisGroup
      #'nonstaff-relatedstaff-spacing #'basic-distance = #5
      %\override VerticalAxisGroup
      %#'nonstaff-unrelatedstaff-spacing #'padding = #0.9
    }
  }
}
