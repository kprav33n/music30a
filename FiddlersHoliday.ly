\version "2.19.24"

\paper {
  #(set-paper-size "letter")
}

\header {
  title = "Fiddler's Holiday"
  tagline = "Music 30A - Beginning Piano, Mission College."
}

global = {
  \time 2/4
  \tempo "Gaily"
}

upper = \relative c'' {
  \global
  \clef treble
  <g-1>8\mf (a b c d4 b) | c4 (a) | b4 (g) | g8 (a b c d4 b) | \break
  c4 (a) | b2 | g8 (a b c d4 b) | c4 (a) | b4 (g) | \break
  g8 (a b c d4 b) | c4 (a) | g2 | <g d'>2\f | <a-2>2 | r2 | \break
  a2 | <g d'>4 <g d'> | a2 | r2 | a2 | g8 (a b c d4 b) | \break
  c4 (a) | b4 (g) | g8\f (a b c d4 b) | c4 (a) | g
}

lower = \relative c' {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  r2 | <g-1 d-5>2 | r2 | <g d'>2 | r2 | <g d'>2 |
  r2 | <g d'>2 | r2 | <g d'>2 | r2 | <g d'>2 |
  r2 | <g d'>2 | r2 | <g d'>2 | r2 | <d'-1>2 | <g, d'>2 |
  d'2 | r2 | d2 | <g, d'>2 | d2 | r2 | <g d'>2 |
  r2 | <g d'>2 | g8 (a b c d4 b) | c4 (a) | g
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
    \tempo 4 = 180
  }
}
