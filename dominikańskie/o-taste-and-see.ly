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

#(ly:set-option 'strokeadjust #t)
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
  arranger = "arr. Ł. Miśko OP"
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
    g4. a8 |
    \time 3/4
    bes4. bes8 a f |
    \time 2/4
    g4 g8 g |
    g4 d8 f |
    f4.
  }
  \repeat volta 2 {
    \override ParenthesesItem #'extra-offset = #'(0 . -0.5)
    \cadenzaOn f\breve g a4 \parenthesize a \cadenzaOff \bar "|"
    \cadenzaOn bes\breve a8 f  g4 \parenthesize g \cadenzaOff
  }
}
melodiaAltu = \relative f' {
  \repeat volta 2 {
    \metrumitp
    c8 |
    d4. d8 f e |
    f4. f8 |
    d4 d8 d |
    f4 ( e8 ) f8 |
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
    c4. c8 |
    g4 a8 a |
    c4. c8 |
    g4. g8 a a |
    c4 c8 c8 |
    bes4 f8 bes |
    a4.
  }
  \repeat volta 2 {
    \override ParenthesesItem #'extra-offset = #'(0 . -1)
    \cadenzaOn a\breve c c4 \parenthesize c \cadenzaOff \bar "|"
    \revert ParenthesesItem #'extra-offset
    \cadenzaOn g\breve a8 a  c4 \parenthesize c \cadenzaOff
  }
}
melodiaBasow = \relative f {
  \repeat volta 2 {
    \metrumitp
    a,8 | d4. d8 c8 c |
    f4. a,8 |
    g4 d'8 d |
    c4. a8 |
    g4. g8 d' d |
    c4 c8 a8 |
    g4 bes8 bes |
    f4.
  }
  \repeat volta 2 {
    \cadenzaOn d'\breve c f4 f \cadenzaOff \bar "|"
    \cadenzaOn g,\breve d'8 d c4 \parenthesize c \cadenzaOff
  }
}
akordy = \chordmode {
}

#(define powiekszenie-zwrotek '(1.2 . 1.2))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #1.3
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../.szablon/globalne-ustawienia-formatowania.ily"

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = \markup \italic "Ref.:"
  O taste and see
  %\override LyricText.X-offset = #-0.5
  how good,
  %\revert LyricText.X-offset
  how sweet is the Lᴏʀᴅ,
  o taste and see
  \override LyricText.X-offset = #-0.5
  how good
  \revert LyricText.X-offset
  and how sweet is the Lᴏʀᴅ.
  \set stanza = "1."
  \once \override LyricText #'self-alignment-X = #LEFT
  "I will bless the"
  \once \override LyricText #'self-alignment-X = #LEFT
  \markup { \underline\bold Lᴏʀᴅ at all } \markup \underline\bold times, \skip 1 
  \once \override LyricText #'self-alignment-X = #LEFT
  "praise of him is always" \markup \underline\bold in my
  \override LyricText.X-offset = #-1.5
  mouth. \skip 1
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup \column {
  \line { Glorify the \underline\bold LORD with \underline\bold me; }
  \line { together let us \underline\bold praise his name. }
  \line {
    I sought the \underline\bold LORD, and he
    \concat { \underline\bold an swered } me;
  }
  \line { from all my terrors he \underline\bold set me free. }
}
zwrotkaIII = \markup \column {
  \line {
    Look toward him \underline\bold and be
    \concat { \underline\bold ra diant; }
  }
  \line { let your faces not \underline\bold be abashed. }
  \line { This lowly one called; \underline\bold the LORD \underline\bold heard, }
  \line { and rescued him from all \underline\bold his distress. }
}
zwrotkaIV = \markup \column {
  \line { 
    The angel of the \underline\bold LORD is
    \concat { en \underline\bold camped }
  }
  \line {
    around those who fear him, to
    \concat { \underline\bold res cue } them.
  }
  \line { Taste and see that the \underline\bold LORD is \underline\bold good. }
  \line {
    Blessed the man who seeks
    \concat { re \underline\bold fuge } in him.
  }
}
zwrotkaV = \markup \column {
  \line {
    Fear the \underline\bold LORD, you his
    \concat { \underline\bold ho ly } ones.
  }
  \line { They lack nothing, \underline\bold those who fear him. }
  \line {
    The rich suffer \underline\bold want and go
    \concat { \underline\bold hun gry, }
  }
  \line { but those who seek the LORD \underline\bold lack no blessing. }
}
zwrotkaVI = \markup \column {
  \line {
    The LORD is close to the
    \concat { \underline\bold bro ken \underline\bold heart ed; }
  }
  \line { those whose spirit is crushed \underline\bold he will save. }
  \line { When the just cry \underline\bold out, the LORD \underline\bold hears, }
  \line { and rescues them in all \underline\bold their distress. }
}
zwrotkaVII = \markup \column {
  \line { Many are the \underline\bold trials of the \underline\bold just man, }
  \line {
    but from them all the LORD will
    \concat { \underline\bold res cue } him.
  }
  \line { He will keep guard over \underline\bold all his \underline\bold bones; }
  \line { not one of his bones \underline\bold shall be broken. }
}

drugiWers = \lyricmode {
  \repeat unfold 23 { \skip 1 }
  \once \override LyricText #'self-alignment-X = #LEFT
  "In the Lᴏʀᴅ my"
  \once \override LyricText #'self-alignment-X = #LEFT
  \markup { \underline\bold soul shall make its }
  \markup \underline\bold boast, \skip 1
  \once \override LyricText #'self-alignment-X = #LEFT
  "the humble shall hear" \markup \underline\bold and be glad. \skip 1
}

drugiWersSopranu = \drugiWers
drugiWersAltu = \drugiWers
drugiWersTenorow = \drugiWers
drugiWersBasow = \drugiWers


\include "../.szablon/struktura-SATB-2-pieciolinie.ily"
\include "../.szablon/struktura-zwrotek.ily"
