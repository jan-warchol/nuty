\version "2.17.3"

%\bookOutputName ""

\header	{
  title = ""
  poet = ""
  composer = "muzyka: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}
%--------------------------------MELODIA
metrumitp = {
  \key c \major
  \time 4/4
  \tempo ""
  \set Timing.beamExceptions = #'()
  \set Timing.beamHalfMeasure = ##f
}
melodiaSopranu = \relative f' {
  \metrumitp
  \bar "|."
}
melodiaAltu = \relative f' {
  \metrumitp
  \bar "|."
}
melodiaTenorow = \relative f {
  \metrumitp
  \bar "|."
}
melodiaBasow = \relative f {
  \metrumitp
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

drugiWers = \lyricmode {
}

drugiWersSopranu = \drugiWers
drugiWersAltu = \drugiWers
drugiWersTenorow = \drugiWers
drugiWersBasow = \drugiWers

zwrotkaII = \markup {
}
zwrotkaIII = \markup {
}
zwrotkaIV = \markup {
}
zwrotkaV = \markup {
}
