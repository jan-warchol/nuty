\version "2.17.3"

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
    \new Lyrics \lyricsto sopran \tekstSopranu
    \new Lyrics \lyricsto sopran \drugiWersSopranu

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
    \new Lyrics \lyricsto alt \tekstAltu
    \new Lyrics \lyricsto alt \drugiWersAltu

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
    \new Lyrics \lyricsto tenor \tekstTenorow
    \new Lyrics \lyricsto tenor \drugiWersTenorow

    \new Staff = bas {
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
    \new Lyrics \lyricsto bas \tekstBasow
    \new Lyrics \lyricsto bas \drugiWersBasow
  >>
}

\layout {
}
