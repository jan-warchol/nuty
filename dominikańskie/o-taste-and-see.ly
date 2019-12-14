\version "2.18.2"

#(define ((custom-time-signature one two three four) grob)
   ;; derived from
   ;; http://lilypond.1069038.n5.nabble.com/Mixed-Time-Signatures-Non-regular-alternantion-between-5-8-and-8-8-td18617.html
   (grob-interpret-markup grob
     (markup #:override '(baseline-skip . 0) #:number
       (#:line ((#:column (one two))
                (#:column (three four)))))))


alternatingTimeSignatures =
#(define-music-function (parser location timesigs)
   (list?)
   (let* ((newTime (cons
                    (list-ref timesigs 0)
                    (list-ref timesigs 1)))
          (numOne (number->string (list-ref timesigs 0)))
          (denOne (number->string (list-ref timesigs 1)))
          (numTwo (number->string (list-ref timesigs 2)))
          (denTwo (number->string (list-ref timesigs 3))))
     #{
       \override Score.TimeSignature.stencil =
       #(custom-time-signature numOne denOne numTwo denTwo)
       \time #newTime
     #}
     ))

\include "../.szablon/formaty/default-a4-paper.ily"
\bookOutputSuffix "a4-2pieciolinie"

#(set-global-staff-size 18)

\paper {
  top-markup-spacing #'basic-distance = 10
  system-system-spacing #'basic-distance = 18
  score-markup-spacing #'basic-distance = 18
  \include "../.szablon/uklad-tytulow.ily"
  system-count = 3
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #2
}

\header	{
  title = "O Taste And See"
  subtitle = "Psalm 34"
  composer = "P. Bębenek"
  arranger = "arr. L. Miśko OP"
  editor = "skład nut: Jan Warchoł"
}

%--------------------------------MELODIA
metrumitp = {
  \key f \major
  \alternatingTimeSignatures #'(3 4 2 4)
  \tempo ""
  \partial 8
  \set Timing.beamExceptions = #'()
  \set Timing.beamHalfMeasure = ##f
  \override ParenthesesItem #'padding = #0.5
  \override ParenthesesItem #'font-size = 3.5
}
melodiaSopranu = \relative f' {
  \repeat volta 2 {
    \metrumitp
    e8 |
    \omit Score.TimeSignature
    \time 3/4
    f4. f8 g g |
    \time 2/4
    a4. f8 |
    bes4 a8 f |
    g4. \fermata a8 |
    \time 3/4
    bes4. bes8 a f |
    \time 2/4
    g4 g8 g |
    g4 d8 f |
    f4.
  }
  \repeat volta 2 {
    \override ParenthesesItem #'extra-offset = #'(0 . -0.5)
    \cadenzaOn f\breve g \parenthesize a4 a \cadenzaOff \bar "|"
    \cadenzaOn bes\breve a8 f \parenthesize g4 g \cadenzaOff
  }
}
melodiaAltu = \relative f' {
  \repeat volta 2 {
    \metrumitp
    c8 |
    d4. d8 f e |
    f4. f8 |
    d4 d8 d |
    f4 ( e8 \fermata ) f8 |
    d4. d8 f d
    f4 e8 e8 |
    d4 bes8 d |
    c4.
  }
  \repeat volta 2 {
    \cadenzaOn d\breve e f4 f \cadenzaOff \bar "|"
    \cadenzaOn d\breve f8 c e4 e \cadenzaOff
  }
}
melodiaTenorow = \relative f {
  \repeat volta 2 {
    \metrumitp
    a8 | a4. a8 c8 c |
    c4 c8 c |
    g4 a8 a |
    c4. \fermata c8 |
    g4. g8 a a |
    c4 c8 c8 |
    bes4 f8 bes |
    a4.
  }
  \repeat volta 2 {
    \override ParenthesesItem #'extra-offset = #'(0 . -1)
    \cadenzaOn a\breve c \parenthesize c4 c \cadenzaOff \bar "|"
    \revert ParenthesesItem #'extra-offset
    \cadenzaOn g\breve a8 a \parenthesize c4 c \cadenzaOff
  }
}
melodiaBasow = \relative f {
  \repeat volta 2 {
    \metrumitp
    a,8 | d4. d8 c8 c |
    f4 f8 a,8 |
    g4 d'8 d |
    c4. \fermata f,8 |
    g4. g8 d' d |
    c4 c8 a8 |
    g4 bes8 bes |
    f4.
  }
  \repeat volta 2 {
    \cadenzaOn d'\breve c f4 f \cadenzaOff \bar "|"
    \cadenzaOn g,\breve d'8 f \parenthesize c4 c \cadenzaOff
  }
}
akordy = \chordmode {
}

#(define powiekszenie-zwrotek '(1.2 . 1.2))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #2
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../.szablon/globalne-ustawienia-formatowania.ily"

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = \markup \italic "Ref.:"
  O taste and see
  \override LyricText.X-offset = #-0.5
  how good,
  \revert LyricText.X-offset
  how sweet is the Lord,
  o taste and see
  \override LyricText.X-offset = #-0.5
  how good
  \revert LyricText.X-offset
  and how sweet is the Lord.
  \set stanza = "1."
  \once \override LyricText #'self-alignment-X = #LEFT
  "I will bless the"
  \once \override LyricText #'self-alignment-X = #LEFT
  "Lord at all" \skip 1 times,
  \once \override LyricText #'self-alignment-X = #LEFT
  "praise of him is always" in my \skip 1 mouth.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup \column {
  "Glorify the LORD with me;"
  "together let us praise his name."
  "I sought the LORD, and he answered me;"
  "from all my terrors he set me free."
}
zwrotkaIII = \markup \column {
  "Look toward him and be radiant;"
  "let your faces not be abashed."
  "This lowly one called; the LORD heard,"
  "and rescued him from all his distress."
}
zwrotkaIV = \markup \column {
  "The angel of the LORD is encamped"
  "around those who fear him, to rescue them."
  "Taste and see that the LORD is good."
  "Blessed the man who seeks refuge in him."
}
zwrotkaV = \markup \column {
  "Fear the LORD, you his holy ones."
  "They lack nothing, those who fear him."
  "The rich suffer want and go hungry,"
  "but those who seek the LORD lack no blessing."
}
zwrotkaVI = \markup \column {
  "The LORD is close to the brokenhearted;"
  "those whose spirit is crushed he will save."
  "When the just cry out, the LORD hears,"
  "and rescues them in all their distress."
}
zwrotkaVII = \markup \column {
  "Many are the trials of the just man,"
  "but from them all the LORD will rescue him."
  "He will keep guard over all his bones;"
  "not one of his bones shall be broken."
}

drugiWers = \lyricmode {
  \repeat unfold 23 { \skip 1 }
  \once \override LyricText #'self-alignment-X = #LEFT
  "In the Lord my"
  \once \override LyricText #'self-alignment-X = #LEFT
  % when I tried using \skip instead of hidden x, alignment was wrong
  "soul shall make its" \once \hide LyricText x boast,
  \once \override LyricText #'self-alignment-X = #LEFT
  "the humble shall hear" and be \skip 1 glad.
}

drugiWersSopranu = \drugiWers
drugiWersAltu = \drugiWers
drugiWersTenorow = \drugiWers
drugiWersBasow = \drugiWers


\include "../.szablon/struktura-SATB-2-pieciolinie.ily"
\include "../.szablon/struktura-zwrotek.ily"
