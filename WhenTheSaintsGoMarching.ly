\version "2.19.24"

\paper {
  #(set-paper-size "letter")
}

\markup {
  \wordwrap {

    \italic { When the Saints Go Marching In } begins with an upbeat, a beat or
    beats other than the first in the measure, as opposed to a downbeat (the
    first beat). When a piece begins with an upbeat, the missing beats in the
    first measure will be found at the end of the piece. Here the upbeat
    consists of three beats, so the last measure conists of one beat. The first
    complete measure is counted as measure one.
  
  }
}

\header {
  title = "When the Saints Go Marching In"
  tagline = "Music 30A - Beginning Piano, Mission College."
}

global = {
  \key d \major
  \time 4/4
  \tempo "Allegretto"
}

upper = \relative c' {
  \global
  \clef treble
  \repeat volta 2 {
  \partial 4*3 d4\f-1 fis4 g4 |
  a1~ |
  a4 d,4 fis4 g4 |
  a1~ |
  a4 d,4 fis4 g4 | \break
  a2 fis2 |
  d2 fis2 |
  e1~ |
  e2 fis4 e4 |
  d2. d4 |
  fis2 a4 a4 | \break
  a4 g2.~ |
  g2 fis4 g4 |
  a2 fis2 |
  d2 e2 |
  d1~ |
  \partial 4 d4
  }
}

lower = \relative c' {
  \global
  \clef bass
  \repeat volta 2
  {
  \partial 4*3 r4 r2 |
  r4 d,-5 fis g |
  a1~ |
  a4 d, fis g |
  a1 |
  r4 a\staccato r a\staccato |
  r4 a\staccato r a\staccato |
  r4 a\staccato a\staccato a\staccato |
  g4\staccato r4 r2 |
  r4 a\staccato a\staccato r |
  r4 a\staccato r2 |
  r2 g4\staccato g\staccato |
  g4\staccato r r2 |
  r4 a\staccato r a\staccato |
  r4 a\staccato r a\staccato |
  r4 a\staccato-1 f\staccato-3 fis\staccato-2 |
  \partial 4 d4\staccato
  }
}

\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
  }
  \midi {
    \tempo 4 = 208
  }
}

\markup {
  \wordwrap {
    \italic Allegretto is a tempo marking that means to play rather quickly. 
  }
}

\markup {
  \wordwrap {
    The repeat bar indicates that the piece should be repeated from the beginning.
  }
}
