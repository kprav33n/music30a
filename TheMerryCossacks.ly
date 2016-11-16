\version "2.19.24"

\paper {
  #(set-paper-size "letter")
}

\header {
  title = "The Merry Cossacks"
  tagline = "Music 30A - Beginning Piano, Mission College."
}

global = {
  \time 4/4
  \tempo "Vigorously"
}

upper = \relative c' {
  \global
  \clef treble
  <e-3>4\f e e2 | r1 | e4 e e2 | r1 | \break
  r4 e e e | e4 g fis e | fis1 | r1 | e4\pp e e2 | \break
  r1 | e4 e e2 | r1 | r4 e e e | e4 g fis e | \break
  dis4 e fis dis | e1 |
  \repeat volta 2 {
    <d-2>4\f g d2 | r1 | e4 g e2 | \break
    r1 | <e-3>4 e e2 | r1 | <dis-2>4 e fis dis |  e1
  }
}

lower = \relative c' {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  r1 | <b-1>4 a g fis | e1 | b'4 a g fis |
  e1 | g1 | r4 b b b | b4 a g fis | e1 |
  b'4 a g fis | e1 | b'4 a g fis | e1 | g1 |
  b1 | g1 | r1 | g4 a b g | r1 |
  g4 a b2 | r1 | e,4 fis g a | b1 | g2 e2
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
    \tempo 4 = 120
  }
}
