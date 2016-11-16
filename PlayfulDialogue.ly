\version "2.19.24"

\paper {
  #(set-paper-size "letter")
}

\header {
  title = "Playful Dialogue"
  tagline = "Music 30A - Beginning Piano, Mission College."
}

global = {
  \time 2/4
  \tempo "Moderately"
}

upper = \relative c' {
  \global
  \clef treble
  e4\f-3 (c) | e4 (c) | d8 (c d e c2) | r2 | r2 | \break
  r2 | r2 | d4 (f) | e4 (g) | r2 | r2 | \break
  e4 (c) | e4 (c) | d8 (c d e c2) | d4\p (f) | e4 (g) | \break
  r2 | r2 | e4\f (c) | e4 (c) | d8 (c d e c2)
}

lower = \relative c' {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  r2 | r2 | r2 | r2 | g4-1 (e) | g4 (e) |
  f8 (e f g e2) | r2 | r2 | <d-4>4 (f) | e4 (g) | \break
  r2 | g2 | f2 | e2 | r2 | r2 | \break
  d8 (e f d e4 g) | r2 | <fis-2>2 | g2 | e2
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
    \tempo 4 = 108
  }
}
