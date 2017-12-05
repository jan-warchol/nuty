\version "2.19.0"
#(ly:set-option 'strokeadjust #t)

\header {
  title = \markup \column { \larger "Bóg się rodzi" " " " " }
%  subsubtitle = \markup \column { \normal-text \italic "wersja robocza 8" " " " " }
  poet = "słowa: Franciszek Karpiński (1741-1825)"
  composer = "opracowanie: Katarzyna Szymanek, Jan Warchoł"
}

%--------------------------------MELODIA
metrumitp = {
  \key d \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \tempo "Trochę tajemniczo"
}
melodiaSopranu =
\relative f' {
  \metrumitp
  <>^\markup \italic "soprany bardzo delikatnie"
  <>\p
  a2 cis4 |
  d4 cis2 |
  a2 e'4 |
  fis4 e2 |
  a,2 cis4 |
  d4 cis2 |
  a2 e4 |
  fis4 e2 |
  \repeat volta 2 {
  \repeat unfold 2 {
    cis'2. |
    d2 d4 |
  }
  \override Hairpin.height = #0.5
  \override Hairpin.thickness = #0.6
  << g,2. { s4. s \< } >> |
  << d'2\! -- { s8 s4\> s8\! } >> d4 |
  <<
    {
      b4. b8 b b |
      cis8. e16 e4 d |
    }
    \new Voice = sopranPierwszy {
      \voiceOne
      \set fontSize = #-2
      b2 b'4-\tweak X-offset -3 ^\mp |
      a8 a e e d d |
    }
    \new Lyrics \with { alignAboveContext = sopran }
    \lyricsto sopranPierwszy \lyricmode {
      \set fontSize = #-2
      za -- mie -- szka -- ło mię -- dzy na -- mi.
    }
  >>
  }
}

melodiaAltu =
\relative f' {
  \metrumitp
  <>\mf
  \repeat unfold 2 {
    d8 e fis e e d |
    d8 e fis e e d |
    d8 e fis e e d |
    d4 cis2 |
  }
  \repeat volta 2 {
  \repeat unfold 2 {
    e8( fis g) g fis e |
    fis8( g a) a fis a |
  }
  g4. b8 a g |
  fis8 fis fis4 fis |
  e4. g8 fis e |
  fis8. cis16 e4 d |
  }
}

melodiaTenorow =
\relative f {
  \metrumitp
  <>\f
  \repeat unfold 2 {
    d8. d'16 d4( cis8) b |
    b8. b16 b4( a8) g |
    fis8 a d a g fis |
    fis4 e2 |
  }
  \repeat volta 2 {
  \repeat unfold 3 {
    g4. e8 fis g |
    a8 a fis( a) a4 |
  }
  g4. e8 fis g |
  a8. cis,16 e4 d |
  }
}

melodiaBasow =
\relative f {
  \metrumitp
  <>\mf
  \repeat unfold 2 {
    d8. d16 d4( cis8) b |
    b8. fis'16 fis4 fis |
    fis4 fis b, |
    d4 a2 |
  }
  \repeat volta 2 {
  \repeat unfold 2 {
    g'4. e8 cis a |
    d8 d d4 fis |
  }
  g4. g8 fis e |
  a,8 a a4 d |
  e4. e8 e e |
  a,8. a16 a4 d |
  }
}
akordy = \chordmode {
}

%--------------------------------SŁOWA

wzgardzony = \lyricmode {
  Wzgar -- dzo -- ny o -- kry -- ty chwa -- łą,
  śmier -- tel -- ny Król nad wie -- ka -- mi!
  A Sło -- wo Cia -- łem się sta -- ło
  i mie -- szka -- ło mię -- dzy na -- mi.
}
niemalo = \lyricmode {
  Nie -- ma -- ło cier -- piał, nie -- ma -- ło,
  żeś -- my by -- li winn -- ni sa -- mi.
}
ubodzy = \lyricmode {
  U -- bo -- dzy was to spot -- ka -- ło
  wi -- tać go przed bo -- ga -- cza -- mi!
}
domNasz = \lyricmode {
  Dom nasz i ma -- ję -- tność ca -- łą,
  i wszyst -- kie wios -- ki z_mia -- sta -- mi.
}

tekstSopranu = \lyricmode {
  \set stanza = "1. "
  Bóg się ro -- dzi, moc  tru -- chle -- je!
  O -- gień krze -- pnie, blask cie -- mnie -- je!
  Wzgar -- dzo -- ny śmier -- tel -- ny,
  A Sło -- wo
  za -- mie -- szka -- ło mię -- dzy na -- mi.
}
tekstSopranuDwa = \lyricmode {
  \set stanza = "2. "
  Cóż masz nie -- bo nad zie -- mia -- ny?
  Wszedł mię -- dzy lud u -- ko -- cha -- ny
  Nie -- ma -- ło my sa -- mi,
}
tekstSopranuTrzy = \lyricmode {
  \set stanza = "3. "
  W_nę -- dznej szo -- pie u -- ro -- dzo -- ny,
  Cóż jest, czym był o -- to -- czo -- ny?
  U -- bo -- dzy wi -- tać Go,
}
tekstSopranuCztery = \lyricmode {
  \set stanza = "4. "
  Pod -- nieś rę -- kę, Bo -- że Dzie -- cię,
  W_do -- brych ra -- dach, w_do -- brym by -- cie
  Ma -- jęt -- ność z_mia -- sta -- mi,
}

tekstAltu = \lyricmode {
  \set stanza = "1. "
  Bóg się ro -- dzi, ro -- dzi, wszel -- ka moc  tru -- chle -- je,
  Pan nie -- bio -- sów ob -- na -- żo -- ny!
  O -- gień krze -- pnie,  krze -- pnie, jas -- ny blask cie -- mnie -- je,
  ma gra -- ni -- ce Nie -- skoń -- czo -- ny!
  \wzgardzony
}
tekstAltuDwa = \lyricmode {
  \set stanza = "2. "
  Cóż masz nie -- bo, nie -- bo nad nis -- kie zie -- mia -- ny?
  Bóg po -- rzu -- cił szczę -- ście two -- je.
  Wszedł mię -- dzy, mię -- dzy lud swój tak u -- ko -- cha -- ny
  dzie -- ląc z_nim tru -- dy i zno -- je.
  \niemalo
}
tekstAltuTrzy = \lyricmode {
  \set stanza = "3. "
  W_nę -- dznej szo -- pie, szo -- pie nę -- dznie u -- ro -- dzo -- ny,
  żłób mu za ko -- leb -- kę da -- no.
  Cóż jest, czym był, czym był tyl -- ko o -- to -- czo -- ny?
  By -- dło, pa -- ste -- rze i sia -- no.
  \ubodzy
}
tekstAltuCztery = \lyricmode {
  \set stanza = "4. "
  Pod -- nieś rę -- kę, rę -- kę, Bo -- że Dzie -- cię, Dzie -- cię,
  bło -- go -- sław Oj -- czy -- znę mi -- łą!
  W_do -- brych ra -- dach, ra -- dach, w_do -- brym by -- cie, by -- cie
  wspie -- raj jej si -- łę Swą si -- łą.
  \domNasz
}

tekstTenorow = \lyricmode {
  \set stanza = "1. "
  Bóg się ro -- dzi, moc  tru -- chle -- je,
  Pan nie -- bio -- sów ob -- na -- żo -- ny!
  O -- gień krze -- pnie, blask cie -- mnie -- je,
  ma gra -- ni -- ce Nie -- skoń -- czo -- ny!
  \wzgardzony
}
tekstTenorowDwa = \lyricmode {
  \set stanza = "2. "
  Cóż masz nie -- bo nad zie -- mia -- ny?
  Bóg po -- rzu -- cił szczę -- ście two -- je.
  Wszedł mię -- dzy lud u -- ko -- cha -- ny
  dzie -- ląc z_nim tru -- dy i zno -- je.
  \niemalo
}
tekstTenorowTrzy = \lyricmode {
  \set stanza = "3. "
  W_nę -- dznej szo -- pie u -- ro -- dzo -- ny,
  żłób mu za ko -- leb -- kę da -- no.
  Cóż jest, czym był o -- to -- czo -- ny?
  By -- dło, pa -- ste -- rze i sia -- no.
  \ubodzy
}
tekstTenorowCztery = \lyricmode {
  \set stanza = "4. "
  Pod -- nieś rę -- kę, Bo -- że Dzie -- cię,
  bło -- go -- sław Oj -- czy -- znę mi -- łą!
  W_do -- brych ra -- dach, w_do -- brym by -- cie
  wspie -- raj jej si -- łę Swą si -- łą.
  \domNasz
}

tekstBasow = \lyricmode {
  Bóg się ro -- dzi, moc  tru -- chle -- je,
  Pan ob -- na -- żo -- ny!
  O -- gień krze -- pnie, blask cie -- mnie -- je,
  ma Nie -- skoń -- czo -- ny!
  \wzgardzony
}
tekstBasowDwa = \lyricmode {
  \set stanza = "2. "
  Cóż masz nie -- bo nad zie -- mia -- ny?
  po -- rzu -- cił two -- je.
  Wszedł mię -- dzy lud u -- ko -- cha -- ny
  tru -- dy i zno -- je.
  \niemalo
}
tekstBasowTrzy = \lyricmode {
  \set stanza = "3. "
  W_nę -- dznej szo -- pie u -- ro -- dzo -- ny,
  ko -- leb -- kę da -- no.
  Cóż jest, czym był o -- to -- czo -- ny?
  By -- dło i sia -- no.
  \ubodzy
}
tekstBasowCztery = \lyricmode {
  \set stanza = "4. "
  Pod -- nieś rę -- kę, Bo -- że Dzie -- cię,
  Oj -- czy -- znę mi -- łą!
  W_do -- brych ra -- dach, w_do -- brym by -- cie
  wspie -- raj Swą si -- łą.
  \domNasz
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

#(set-global-staff-size 16)

\paper {
  indent = 2 \mm
  %system-count = 3
  short-indent = 2 \mm
  left-margin = 15 \mm
  right-margin = 15 \mm
  top-markup-spacing #'basic-distance = 5
  markup-system-spacing #'basic-distance = 24
  top-system-spacing #'basic-distance = 10
  system-system-spacing #'basic-distance = 22
  system-system-spacing #'padding = 7
  last-bottom-spacing #'basic-distance = 25
  score-markup-spacing #'basic-distance = 15
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
    \new ChordNames {
      \germanChords
      \set chordNameLowercaseMinor = ##t
      \akordy
    }
    \new Staff = sopran {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = sopran
      \with { \consists "Ambitus_engraver" } {
        \set Staff.midiInstrument = "choir aahs"
        \dynamicUp
        \tupletUp
        \melodiaSopranu
      }
    }
    \new Lyrics \lyricsto sopran \tekstSopranu
    \new Lyrics \lyricsto sopran \tekstSopranuDwa
    \new Lyrics \lyricsto sopran \tekstSopranuTrzy
    \new Lyrics \lyricsto sopran \tekstSopranuCztery

    \new Staff = alt
    \with { \consists "Ambitus_engraver" } {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alt {
        \set Staff.midiInstrument = "choir aahs"
        \dynamicUp
        \tupletUp
        \melodiaAltu
      }
    }
    \new Lyrics \lyricsto alt \tekstAltu
    \new Lyrics \lyricsto alt \tekstAltuDwa
    \new Lyrics \lyricsto alt \tekstAltuTrzy
    \new Lyrics \lyricsto alt \tekstAltuCztery

    \new Staff = tenor
    \with { \consists "Ambitus_engraver" } {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \set Staff.midiInstrument = "choir aahs"
        \dynamicUp
        \tupletUp
        \melodiaTenorow
      }
    }
    \new Lyrics \lyricsto tenor \tekstTenorow
    \new Lyrics \lyricsto tenor \tekstTenorowDwa
    \new Lyrics \lyricsto tenor \tekstTenorowTrzy
    \new Lyrics \lyricsto tenor \tekstTenorowCztery

    \new Staff = bas
    \with { \consists "Ambitus_engraver" } {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bas {
        \set Staff.midiInstrument = "choir aahs"
        \dynamicUp
        \tupletUp
        \melodiaBasow
      }
    }
    \new Lyrics \lyricsto bas \tekstBasow
    \new Lyrics \lyricsto bas \tekstBasowDwa
    \new Lyrics \lyricsto bas \tekstBasowTrzy
    \new Lyrics \lyricsto bas \tekstBasowCztery
  >>
  \layout {
  }
  \midi {
    \tempo 4=85
  }
}

%\markup {
%  \fill-line {
%    \scale #powiekszenie-zwrotek {
%      \null

%      \override #interlinia
%      \line {
%        \bold
%        "2."
%        \odstepOdNumeruDoZwrotki
%        \zwrotkaII
%      }

%      \null

%      \override #interlinia
%      \line {
%        \bold
%        "3."
%        \odstepOdNumeruDoZwrotki
%        \zwrotkaIII
%      }

%      \null

%      \override #interlinia
%      \line {
%        \bold
%        "4."
%        \odstepOdNumeruDoZwrotki
%        \zwrotkaIV
%      }

%      \null
%    }
%  }
%}

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