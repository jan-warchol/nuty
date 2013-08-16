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
