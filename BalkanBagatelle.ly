\version "2.19.24"

\header {
  title = "Balkan Bagatelle"
  tagline = "Music 30A - Beginning Piano, Mission College"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \time 2/4
  \tempo "Moderately"
}

upper = \relative c' {
  \global
  \clef treble
  \set Staff.keyAlterations = #`(((0 . 3) . ,SHARP))
  e8\mf g b a |
  g8 fis g a |
  b2\tenuto |
  b2\tenuto | \break
  e,8 g b a |
  g8 fis g a |
  b2~ |
  b2 | \break
  b8 g a fis |
  g8 e8 fis4 |
  e8\< g fis a |
  g8 b8 a4\! | \break
  b8\> g e g |
  fis8 b a fis |
  e2~ |                         % Fix articulation
  e2\!
}

lower = \relative c {
  \global
  \clef bass
  \set Staff.keyAlterations = #`(((-1 . 3) . ,SHARP))
  r2 |
  r2 |
  e8 g b a |
  g8 fis g fis |
  e2 |
  r2 |
  e8 g b a |
  g8 a g fis |
  e2 |
  b2 |
  e8 g fis a |                  % Fix articulation
  g8 b8 a4 |
  r2 |
  b2 |
  e,8 g b a |
  g8 fis e4
}

\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 108
  }
}
