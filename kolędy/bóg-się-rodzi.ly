\version "2.18.2"
#(ly:set-option 'strokeadjust #t)

\header {
  title = \markup "Bóg się rodzi"
  subsubtitle = \markup \column { \normal-text \italic "wersja robocza 18b" " " " " }
  poet = "słowa: Franciszek Karpiński (1741-1825)"
  composer = "opracowanie: Kasia Szymanek, Janek Warchoł, Ania Abaloszewa"
}

%--------------------------------MELODIA
metrumitp = {
  \key d \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \tempo "Tajemniczo"
  \override DynamicText.X-offset = -3
}
melodiaSopranu =
\relative f' {
  \metrumitp
  <>\p
  \repeat unfold 2 {
    a2 cis4 |
    d4 cis2 |
    d4 a b |
    fis4 e r |
  }
  \repeat unfold 2 {
    cis'2. |
    d2 d4 |
  }
  g,4. e8 fis g |
  a8 a fis( a) a4 |
  g4. e8 fis g |
  a8. cis,16 e4 d |
  \bar "|."
}

melodiaAltu =
\relative f' {
  \metrumitp
  <>\mp
  \repeat unfold 2 {
    fis8 g fis4 e |
    fis8 e fis4 cis8( e) |
    d8 fis fis fis e d |
    a4 cis r |
  }
  \repeat unfold 2 {
    g'4. e8 fis g |
    a8 a fis( a) a4 |
  }
  e4. cis8 d e |
  fis8 fis d( fis) fis4 |
  e4. cis8 d e |
  cis8. cis16 cis4 a |
  \bar "|."
}

melodiaTenorow =
\relative f {
  \metrumitp
  <>\mf
  \repeat unfold 2 {
    d8. d'16 d4( cis8) b |
    b8. b16 b4( a8) g |
    fis8 a d a g fis |
    fis4 e r |
  }
  \repeat unfold 2 {
    e4. g8 fis e |
    fis8 g a4 fis |
  }
  b4. b8 a a |
  a8 a a4 b |
  b4. b8 b b |
  e,8. e16 g4 fis4 |
  \bar "|."
}

melodiaBasow =
\relative f {
  \metrumitp
  <>\mp
  \repeat unfold 2 {
    d8. d16 d4 a |
    b8. fis'16 fis4 fis8( e) |
    d4 d e |
    d4 a r |
  }
  \repeat unfold 2 {
    a4. a8 a a |
    d8 d d4 d |
  }
  e4. e8 a, a |
  d8 d d4 dis |
  e4. g8 fis e |
  a,8. a16 a4 d |
  \bar "|."
}
akordy = \chordmode {
  \repeat unfold 2 {
    d2 a4 b4:m fis:sus4 a4:7
    d2 e4:m d a2
  }
  \repeat unfold 2 {
    a2.:7 d
  }
  e2:m a4 d2 b4:7 e2.:m a2 d4
}

%--------------------------------SŁOWA

wzgardzony = \lyricmode {
  Wzgar -- dzo -- ny o -- kry -- ty chwa -- łą,
  śmier -- tel -- ny Król nad wie -- ka -- mi!
  A Sło -- wo Cia -- łem się sta -- ło
  i mie -- szka -- ło mię -- dzy na -- mi.
}

tekstSopranu = \lyricmode {
  \set stanza = "1. "
  Bóg się ro -- dzi, 
  Pan ob -- na -- żo -- ny!
  O -- gień krze -- pnie,
  ma Nie -- skoń -- czo -- ny!
  Wzgar -- dzo -- ny \break śmier -- tel -- ny
  A Sło -- wo Cia -- łem się sta -- ło
  i mie -- szka -- ło mię -- dzy na -- mi.
}
tekstAltu = \lyricmode {
  \set stanza = "1. "
  Bóg się ro -- _ dzi,  moc  tru -- chle -- je,
  Pan nie -- bio -- sów ob -- na -- żo -- ny!
  O -- gień krze -- _ pnie, blask cie -- mnie -- je,
  ma gra -- ni -- ce Nie -- skoń -- czo -- ny!
  \wzgardzony
}
tekstTenorow = \lyricmode {
  \set stanza = "1. "
  Bóg się ro -- dzi, moc  tru -- chle -- je,
  Pan nie -- bio -- sów ob -- na -- żo -- ny!
  O -- gień krze -- pnie, blask cie -- mnie -- je,
  ma gra -- ni -- ce Nie -- skoń -- czo -- ny!
  \wzgardzony
}
tekstBasow = \lyricmode {
  \set stanza = "1. "
  Bóg się ro -- dzi, moc  tru -- \once \tweak X-offset 0 LyricText chle -- je,
  Pan ob -- na -- żo -- ny!
  O -- gień krze -- pnie, blask cie -- \once \tweak X-offset 0 LyricText mnie -- je,
  ma Nie -- skoń -- czo -- ny!
  \wzgardzony
}

zwrotkaII = \markup \column {
  "Cóż masz niebo nad ziemiany? "
  "Bóg porzucił szczęście twoje."
  "Wszedł między lud ukochany,"
  "Dzieląc z nim trudy i znoje."
  "Niemało cierpiał, niemało,"
  "Żeśmy byli winni sami."
  "A Słowo (...)"
}
zwrotkaIII = \markup \column {
  "W nędznej szopie urodzony, "
  "Żłób Mu za kolebkę dano."
  "Cóż jest, czym był otoczony?"
  "Bydło, pasterze i siano."
  "Ubodzy, was to spotkało"
  "Witać Go przed bogaczami!"
  "A Słowo (...)"
}
zwrotkaIV = \markup \column {
  "Podnieś rękę, Boże Dziecię,"
  "Błogosław Ojczyznę miłą!"
  "W dobrych radach, w dobrym bycie"
  "Wspieraj jej siłę Swą siłą."
  "Dom nasz i majętność całą,"
  "I wszystkie wioski z miastami."
  "A Słowo (...)"
}
zwrotkaV = \markup {
}

%--------------------------------USTAWIENIA

#(set-global-staff-size 18)

\paper {
  indent = 2 \mm
  system-count = 4
  short-indent = 2 \mm
  left-margin = 13 \mm
  right-margin = 13 \mm
  %top-markup-spacing #'basic-distance = 5
  markup-system-spacing #'basic-distance = 2
  system-system-spacing #'basic-distance = 17
  system-system-spacing #'padding = 0
  %score-markup-spacing #'basic-distance = 15
  %ragged-last-bottom = ##f
}

#(define powiekszenie-zwrotek '(1.05 . 1.1))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #2
odstepOdNumeruDoZwrotki = \markup \hspace #1

\layout {
  \override LyricText #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (lyric-text::print grob) 0.9 1))
}

%--------------------------------STRUKTURA

\score {
  \new ChoirStaff <<
    \new ChordNames
    \with { \remove "Staff_performer" } {
      \germanChords
      \set chordNameLowercaseMinor = ##t
      \akordy
    }
    \new Staff = panie <<
      \clef treble
      \new Voice = sopran
      \with { \consists "Ambitus_engraver" } {
        \set Staff.midiInstrument = "choir aahs"
        \dynamicUp
        \tupletUp
        \voiceOne
        \melodiaSopranu
      }
      \new Voice = alt {
        \set Staff.midiInstrument = "choir aahs"
        \dynamicDown
        \tupletDown
        \voiceTwo
        \melodiaAltu
      }
    >>
    \new Lyrics = tekst {}

    \new Staff = panowie <<
      \clef bass
      \new Voice = tenor {
        \set Staff.midiInstrument = "choir aahs"
        \dynamicUp
        \tupletUp
        \voiceOne
        \melodiaTenorow
      }
      \new Voice = bas {
        \set Staff.midiInstrument = "choir aahs"
        \dynamicDown
        \tupletDown
        \voiceTwo
        \melodiaBasow
      }
    >>
    \context Lyrics = tekst \lyricsto tenor \tekstTenorow
  >>
  \layout {
  }
  \midi {
    \tempo 4=85
  }
}

\markup {
  \fill-line {
    \scale #powiekszenie-zwrotek {
      \null

      \override #interlinia
      \line {
        \bold
        "2."
        \odstepOdNumeruDoZwrotki
        \zwrotkaII
      }

      \null

      \override #interlinia
      \line {
        \bold
        "3."
        \odstepOdNumeruDoZwrotki
        \zwrotkaIII
      }

      \null

      \override #interlinia
      \line {
        \bold
        "4."
        \odstepOdNumeruDoZwrotki
        \zwrotkaIV
      }

      \null
    }
  }
}

%--------------------------------STOPKA

\paper {
  tagline = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 1.6)
    \center-column {
      \with-url
      #"http://lilypond.org/"
      \scale #'(0.75 . 0.75)
      #(format #f "LilyPond v~a"
         (lilypond-version)
         )
    }
  }

  oddFooterMarkup = \markup {
    \override #'(baseline-skip . 1)
    \column {
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \on-the-fly #part-first-page {
          \override #'(baseline-skip . 2)
          \center-column {
            \scale #'(1 . 1)
            \fromproperty #'header:copyright
            \scale #'(0.85 . 0.85)
            "skład nut: Jan Warchoł (jan.warchol@gmail.com, 509 078 203)"
          }
        }
      }
      \fill-line {
        %% Tagline header field only on last page in the book.
        \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }
}
