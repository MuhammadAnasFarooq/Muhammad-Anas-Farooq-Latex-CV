\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{altacv}[2026/05/20 Minimal AltaCV-compatible class]
\LoadClass{article}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{fontawesome5}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{ragged2e}
\RequirePackage{etoolbox}
\RequirePackage{paracol}
\RequirePackage{tabularx}
\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlist[itemize]{leftmargin=*, itemsep=1pt, topsep=1pt}

\definecolor{heading}{HTML}{72243D}
\definecolor{accent}{HTML}{72243D}
\definecolor{emphasis}{HTML}{000000}
\definecolor{body}{HTML}{666666}
\color{body}

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}
\newcommand{\email}[1]{\mbox{\faEnvelope\ #1}\quad}
\newcommand{\phone}[1]{\mbox{\faPhone\ #1}\quad}
\newcommand{\mailaddress}[1]{\mbox{\faHome\ #1}\quad}
\newcommand{\location}[1]{\mbox{\faMapMarker*\ #1}\quad}
\newcommand{\linkedin}[1]{\mbox{\faLinkedin\ #1}\quad}
\newcommand{\github}[1]{\mbox{\faGithub\ #1}\quad}
\newcommand{\homepage}[1]{\mbox{\faGlobe\ #1}\quad}

\newenvironment{fullwidth}{}{}
\newcommand{\makecvheader}{%
  {\Huge\bfseries\color{heading}\@name\par}
  \vspace{4pt}
  {\Large\color{accent}\@tagline\par}
  \vspace{5pt}
  {\small\color{body}\@personalinfo\par}
  \vspace{4pt}\hrule\vspace{4pt}
}

\newcommand{\cvsection}[2][]{%
  \ifstrempty{#1}{}{\marginpar{\input{#1}}}%
  \vspace{1pt}{\large\bfseries\color{heading}#2}\par
  \vspace{0pt}{\color{accent}\rule{0.85\linewidth}{0.8pt}}\par\vspace{2pt}
}
\newcommand{\cvsubsection}[1]{\vspace{4pt}{\bfseries\color{accent}#1}\par\vspace{2pt}}
\newcommand{\cvevent}[4]{%
  {\normalsize\bfseries\color{emphasis}#1}\par
  {\bfseries\color{accent}#2}\par
  {\small\faCalendar*\ #3\ifstrempty{#4}{}{\quad\faMapMarker*\ #4}}\par\vspace{3pt}
}
\newcommand{\divider}{\par\vspace{2pt}{\color{LightGrey}\rule{\linewidth}{0.4pt}}\vspace{2pt}\par}
\newcommand{\cvtag}[1]{%
  \tikz[baseline]\node[anchor=base,rounded corners=2pt,draw=accent!40,fill=accent!8,inner xsep=3pt,inner ysep=1.5pt,text=emphasis]{\small #1};\hspace{3pt}\vspace{2pt}%
}
\newcommand{\cvskill}[2]{%
  {\small\bfseries #1}\hfill{\small\color{accent}#2}\par\vspace{4pt}
}
\newcommand{\cvachievement}[3]{\textcolor{accent}{#1}\quad\begin{minipage}[t]{0.82\linewidth}\textbf{#2}\par {\small #3}\end{minipage}\par\vspace{4pt}}
\newcommand{\itemmarker}{{\small\textbullet}}
\newcommand{\ratingmarker}{\faCircle}
\newcommand{\addbibresource}[1]{}
\AtBeginDocument{\renewcommand\labelitemi{\itemmarker}}
