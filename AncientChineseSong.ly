\version "2.19.24"

\paper {
  #(set-paper-size "letter")
}

\header {
  title = "Ancient Chinese Song"
  tagline = "Music 30A - Beginning Piano, Mission College."
}

global = {
  \time 2/4
  \tempo "Slowly"
}

upper = \relative c' {
  \global
  \clef treble
  \repeat volta 2 { r2\mf | <d-2>8 f f d | c4 c8 d | c2 } r2 | r2 | \break
  <d-2>4 d | c2 | r2 | r2 | f4 f8 d8 | f2
}

lower = \relative c' {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  \repeat volta 2 { <a-3>4 a8 c | r2 | a2 | g2 } a4 c | c4 a8 c |
  r2 | r2 | a4 c | g4 a | f4 g | a2
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
    \tempo 4 = 60
  }
}
