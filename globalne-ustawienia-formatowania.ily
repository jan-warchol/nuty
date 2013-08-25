\version "2.17.18"

\paper {
  #(define fonts
     (make-pango-font-tree "FreeSerif"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 20)))
}

\layout {
  \compressFullBarRests
  \override NoteHead #'style = #'altdefault
  \context {
    \Staff
    \consists "Ambitus_engraver"
    \override StaffSymbol #'thickness = #0.9
    \override BarLine #'hair-thickness = #2
    \override Stem #'thickness = #1.2
    \override Slur #'thickness = #1.6
    \override Tie #'line-thickness = #1
    \override ClefModifier #'font-shape = #'roman
    \override ClefModifier #'font-size = #-3.3
    \override ClefModifier #'X-offset = #0.7
  }
  \context {
    \Lyrics
    \override LyricText #'font-size = #0.8
    \override LyricHyphen #'extra-offset = #'(0 . 0.1)
    \override LyricHyphen #'minimum-distance = #0.5
    \override LyricSpace #'minimum-distance = #0.7
    \override VerticalAxisGroup
    #'nonstaff-relatedstaff-spacing #'basic-distance = #5
    %\override VerticalAxisGroup
    %#'nonstaff-unrelatedstaff-spacing #'padding = #0.9
  }
}
