\version "2.18.2"

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
  \partial 8
}
melodiaSopranu = \relative f' {
  \repeat volta 2 {
    \metrumitp
    e8 |
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
    \cadenzaOn a\breve c c4 \parenthesize c \cadenzaOff \bar "|"
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

%--------------------------------SŁOWA

tekst = \lyricmode {
  \set stanza = \markup \italic "Ref.:"
  O taste and see
  how good,
  how sweet is the Lᴏʀᴅ,
  o taste and see
  how good
  and how sweet is the Lᴏʀᴅ.
  \set stanza = "1."
  "I will bless the"
  \markup { \underline\bold Lᴏʀᴅ at all } \markup \underline\bold times, \skip 1 
  "praise of him is always" \markup \underline\bold in my
  mouth. \skip 1
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup \column {
  \line { Glorify the \underline\bold Lᴏʀᴅ with \underline\bold me; }
  \line { together let us \underline\bold praise his name. }
  \line {
    I sought the \underline\bold Lᴏʀᴅ, and he
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
  \line { This lowly one called; \underline\bold the Lᴏʀᴅ \underline\bold heard, }
  \line { and rescued him from all \underline\bold his distress. }
}
zwrotkaIV = \markup \column {
  \line { 
    The angel of the \underline\bold Lᴏʀᴅ is
    \concat { en \underline\bold camped }
  }
  \line {
    around those who fear him, to
    \concat { \underline\bold res cue } them.
  }
  \line { Taste and see that the \underline\bold Lᴏʀᴅ is \underline\bold good. }
  \line {
    Blessed the man who seeks
    \concat { re \underline\bold fuge } in him.
  }
}
zwrotkaV = \markup \column {
  \line {
    Fear the \underline\bold Lᴏʀᴅ, you his
    \concat { \underline\bold ho ly } ones.
  }
  \line { They lack nothing, \underline\bold those who fear him. }
  \line {
    The rich suffer \underline\bold want and go
    \concat { \underline\bold hun gry, }
  }
  \line { but those who seek the Lᴏʀᴅ \underline\bold lack no blessing. }
}
zwrotkaVI = \markup \column {
  \line {
    The Lᴏʀᴅ is close to the
    \concat { \underline\bold bro ken \underline\bold heart ed; }
  }
  \line { those whose spirit is crushed \underline\bold he will save. }
  \line { When the just cry \underline\bold out, the Lᴏʀᴅ \underline\bold hears, }
  \line { and rescues them in all \underline\bold their distress. }
}
zwrotkaVII = \markup \column {
  \line { Many are the \underline\bold trials of the \underline\bold just man, }
  \line {
    but from them all the Lᴏʀᴅ will
    \concat { \underline\bold res cue } him.
  }
  \line { He will keep guard over \underline\bold all his \underline\bold bones; }
  \line { not one of his bones \underline\bold shall be broken. }
}
