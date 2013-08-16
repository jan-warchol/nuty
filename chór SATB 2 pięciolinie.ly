\version "2.17.3"

%--------------------------------CAŁOŚĆ

\score {
  \new ChoirStaff <<
    % \new ChordNames { \germanChords \akordy }
    \new Staff = panie {
      \clef treble
      \set Staff.instrumentName = \markup \center-column { S A }
      \set Staff.shortInstrumentName = \markup \center-column { S A }
      \new Voice = sopran {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp

        \voiceOne
        \melodiaSopranu
      }
      \new Voice = alt {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin #'stencil = ##f
        \override DynamicText #'stencil = ##f
        \override DynamicTextSpanner #'stencil = ##f
        \override TextScript #'stencil = ##f

        \voiceTwo
        \melodiaAltu
      }
    }

    \new Lyrics \lyricsto sopran \tekst

    \new Staff = panowie {
      \clef bass
      \set Staff.instrumentName = \markup \center-column { T B }
      \set Staff.shortInstrumentName = \markup \center-column { T B }
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin #'stencil = ##f
        \override DynamicText #'stencil = ##f
        \override DynamicTextSpanner #'stencil = ##f
        \override TextScript #'stencil = ##f

        \voiceOne
        \melodiaTenorow
      }
      \new Voice = bas {
        \set Voice.midiInstrument = "clarinet"
        \dynamicDown

        \voiceTwo
        \melodiaBasow
      }
    }
  >>

  \layout {
    \compressFullBarRests
    \override NoteHead #'style = #'altdefault
    \context {
      \Lyrics
      \override LyricSpace #'minimum-distance = #0.7
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override VerticalAxisGroup
      #'nonstaff-relatedstaff-spacing #'padding = #1
    }
  }
}
