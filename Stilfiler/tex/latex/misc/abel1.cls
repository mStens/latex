\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abel1}[2011/09/25 For forslag til abeloppgaver]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

\newcommand{\prefiks}[1]{\def\prefikset{#1}}\prefiks{Oppgave}
\newcommand{\oppgave}[2][\prefikset]
  {\par\setcounter{svaralt}{0}\bigskip\noindent
   \hbox{\fontseries{bx}\sffamily\scriptsize#1 #2}\enspace}
\newcounter{svaralt}
\renewcommand{\thesvaralt}{\Alph{svaralt}}
\newcommand{\svaralt}[1][\qquad]
  {\ifnum\value{svaralt}=0
    \par\bgroup\def\par{\endgraf\egroup}\let\\=\newline
    \lineskiplimit3pt\lineskip3pt
    \advance\leftskip1em\smallskip\noindent
   \else\unskip#1\fi
   \stepcounter{svaralt}%
   \textbf{\sffamily\scriptsize\thesvaralt}\enspace\ignorespaces
  }
