%%
%% This is file `vlsithesis.cls'
%%
%% generated by Till Kuendiger - August 2003
%%
%%   To be used for all MASc Thesis' and PhD Dissertations
%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{vlsithesis}[2004/05/06 v0.34 - Till Kuendiger]


\newcommand\contentsname{TABLE OF CONTENTS}
\newcommand\listfigurename{LIST OF FIGURES}
\newcommand\listtablename{LIST OF TABLES}
\newcommand\bibname{REFERENCES}
\newcommand\indexname{INDEX}
\newcommand\figurename{FIGURE}
\newcommand\tablename{TABLE}
\newcommand\partname{Part}
\newcommand\chaptername{CHAPTER}
\newcommand\appendixname{APPENDIX}
\newcommand\listappendixname{LIST OF APPENDIX}
\newcommand\abstractname{ABSTRACT}
\newcommand\declarationname{DECLARATION OF ORIGINALITY}
\newcommand\dedicationname{DEDICATION}
\newcommand\acknowledgementsname{ACKNOWLEDGEMENTS}
\newcommand\vitaname{VITA AUCTORIS}

\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\newif\if@mainmatter \@mainmattertrue
\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\if@compatibility
\@openrighttrue
\else
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\ExecuteOptions{letterpaper,12pt,twoside,onecolumn,final,openright}
\ProcessOptions
\input{bk1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}

% make sure that margins are set correctly
%\setlength{\oddsidemargin}{0.5in}
%\setlength{\evensidemargin}{0.0in}
%\setlength{\textwidth}{6.0in}
%\setlength{\topmargin}{0.5in}
%\setlength{\textheight}{8.25in}
%\setlength{\headsep}{0.25in}
%\setlength{\footskip}{0.5in}

\usepackage{geometry}
\geometry{letterpaper,left=1.5in,top=1in,right=1in,bottom=1in}

% Allow user to define what double space actually means
\newcommand\lspacing{1.5}

% These macros define an environment for front matter that is always 
% single column even in a double-column document.

\def\alwayssingle{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn \else \newpage \fi}

\def\endalwayssingle{\if@restonecol\twocolumn \else \newpage \fi}

%   New environments   %

% The dedication environment just makes sure the dedication gets its
% own page.
%\newenvironment{dedication} 
%{\if@openright\cleardoublepage\else\clearpage\fi \addcontentsline{toc}{chapter}{\normalsize Dedication} \begin{alwayssingle} \thispagestyle{plain} \ssp}
%{\if@twoside\clearpage\thispagestyle{plain}\newpage\fi \dsp \end{alwayssingle}}
%
%\newenvironment{vita}
%{\if@openright\cleardoublepage\else\clearpage\fi \addcontentsline{toc}{chapter}{\normalsize VITA AUCTORIS}\begin{alwayssingle} \thispagestyle{plain} \ssp \@makevitahead{VITA AUCTORIS}}
%{\if@twoside\clearpage\thispagestyle{plain}\newpage\fi \dsp \end{alwayssingle}}

% New variables
% Degree type
\def\degree#1{\gdef\@degree{#1}}

% Department
\def\dept#1{\gdef\@dept{#1}}

% Degree year
\def\defenseyear#1{\gdef\@defenseyear{#1}}

% Defense date
\def\defensedate#1{\gdef\@defensedate{#1}}

% Document type
\def\doctype#1{\gdef\@doctype{#1}}

\renewcommand{\baselinestretch}{\lspacing}

% A convient way to switch between single and double space
\def\hsp{\def\baselinestretch{0.75}\large\normalsize}
\def\ssp{\def\baselinestretch{1.0}\large\normalsize}
\def\dsp{\def\baselinestretch{\lspacing}\large\normalsize}

% Committee members variables
\def\@numberofmembers{3}
\def\@approvalspace{0.75in}
\def\numberofmembers#1{\gdef\@numberofmembers{#1}
\ifnum \@numberofmembers > 3
\gdef\@approvalspace{.35in}
\fi}

\def\@membera{Supervisor}
\def\@memberb{ }
\def\@memberc{ }
\def\@memberd{ }
\def\@membere{ }
\def\@memberf{ }
\def\membera#1{\gdef\@membera{#1}}
\def\memberb#1{\gdef\@memberb{#1}}
\def\memberc#1{\gdef\@memberc{#1}}
\def\memberd#1{\gdef\@memberd{#1}}
\def\membere#1{\gdef\@membere{#1}}
\def\memberf#1{\gdef\@memberf{#1}}
\def\@depta{Electrical and Computer Engineering}
\def\@deptb{ }
\def\@deptc{ }
\def\@deptd{ }
\def\@depte{ }
\def\@deptf{ }
\def\depta#1{\gdef\@depta{#1}}
\def\deptb#1{\gdef\@deptb{#1}}
\def\deptc#1{\gdef\@deptc{#1}}
\def\deptd#1{\gdef\@deptd{#1}}
\def\depte#1{\gdef\@depte{#1}}
\def\deptf#1{\gdef\@deptf{#1}}

% Copyright page
\def\makecopyright{
	
	\begin{alwayssingle}
	\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{empty}
	\begin{center}
		\vspace*{1.5in}
		\underline{\copyright\ \@defenseyear\ \@author} \\ 
	\end{center}
	\vspace*{0.5in}
	All Rights Reserved.  No Part of this document may be reproduced, stored or otherwise retained in a retrieval system or transmitted in any form, on any medium by any means without prior written permission of the author.
	\if@twoside\clearpage\thispagestyle{empty}\newpage\fi
	\end{alwayssingle}
}


% Abstract Page
\newcommand\abstract[1]{
\clearpage
\null\hfill\abstractname\hfill\null\par
\addcontentsline{toc}{chapter}{\normalsize \abstractname}
 {#1}
}

% Decleration
\newcommand\makedeclaration{
\clearpage

\null\hfill\declarationname\hfill\null\par
\addcontentsline{toc}{chapter}{\normalsize \declarationname}
I hereby certify that I am the sole author of this thesis and that no part of this thesis has been published or submitted for publication.

I certify that, to the best of my knowledge, my thesis does not infringe upon anyone’s copyright nor violate any proprietary rights and that any ideas, techniques, quotations, or any other material from the work of other people included in my thesis, published or otherwise, are fully acknowledged in accordance with the standard referencing practices. Furthermore, to the extent that I have included copyrighted material that surpasses the bounds of fair dealing within the meaning of the Canada Copyright Act, I certify that I have obtained a written permission from the copyright owner(s) to include such material(s) in my thesis and have included copies of such copyright clearances to my appendix. 
 
I declare that this is a true copy of my thesis, including any final revisions, as approved by my thesis committee and the Graduate Studies office, and that this thesis has not been submitted for a higher degree to any other University or Institution.
}

\newcommand\vita[1]{
\clearpage
\thispagestyle{plain}
\chapter*\vitaname\hfill\null\par
\addcontentsline{toc}{chapter}{\normalsize \vitaname}
 {#1}
}

% dedication
\newcommand\dedication[1]{
\clearpage
\null\hfill\dedicationname\hfill\null\par
\addcontentsline{toc}{chapter}{\normalsize \dedicationname}
 {#1}
}

% acknowledgements
\newcommand\acknowledgements[1]{
\clearpage
\null\hfill\acknowledgementsname\hfill\null\par
\addcontentsline{toc}{chapter}{\normalsize \acknowledgementsname}
 {#1}
}

%appendix
% acknowledgements
\newcommand\appendix[1]{
\clearpage
\null\hfill\appendixname\hfill\null\par
\addcontentsline{toc}{chapter}{\normalsize \appendixname}
 {#1}
}

% Approval Page
\def\makeapproval{
	\begin{alwayssingle}
	\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{empty}
	\null\vfill
	\begin{center} 
	\@title \\
	      \vskip 2em%
 		by \\ 
	      \vskip 2em%
	       \@author \\ 
	      \vskip 5em%
	      APPROVED BY: \\ \par
		\ssp

	\vspace{\@approvalspace}
	\ifnum \@numberofmembers > 0
		$\:\underline{~~~~ \mbox{\rule{0in}{0.16in} ~\hspace{3in}}}\:$ \\
		{\small \@membera} \\
		{\small \@depta}\par
	\vspace{\@approvalspace} 
	\fi
	\ifnum \@numberofmembers > 1
		$\:\underline{~~~~ \mbox{\rule{0in}{0.16in} ~\hspace{3in}}}\:$ \\
                {\small \@memberb} \\
                {\small \@deptb}\par
	\vspace{\@approvalspace} 
	\fi
	\ifnum \@numberofmembers > 2
		$\:\underline{~~~~ \mbox{\rule{0in}{0.16in} ~\hspace{3in}}}\:$ \\
		{\small \@memberc} \\
		{\small \@deptc}\par
	\vspace{\@approvalspace}
	\fi
	\ifnum \@numberofmembers > 3
		$\:\underline{~~~~ \mbox{\rule{0in}{0.16in} ~\hspace{3in}}}\:$ \\
		{\small \@memberd} \\
		{\small \@deptd}\par
	\vspace{\@approvalspace}
	\fi
	\ifnum \@numberofmembers > 4
		$\:\underline{~~~~ \mbox{\rule{0in}{0.16in} ~\hspace{3in}}}\:$ \\
		{\small \@membere} \\
		{\small \@depte}\par
	\vspace{\@approvalspace}
	\fi
	\ifnum \@numberofmembers > 5
		$\:\underline{~~~~ \mbox{\rule{0in}{0.16in} ~\hspace{3in}}}\:$ \\
		{\small \@memberf} \\
		{\small \@deptf}\par
	\vspace{\@approvalspace}
	\fi
	\hfill \@defensedate \\
	\end{center}	
	\vfill\null
	\if@twoside\clearpage\thispagestyle{empty}\newpage\fi
	\dsp
	\end{alwayssingle}

}


  \def\ps@headings{%
    \def\@oddhead{
			\begin{minipage}{\textwidth}\tiny
%				{\footnotesize\slshape\rightmark\hfill\newline} 
				\begin{tabular*}{\textwidth}{@{}r@{\extracolsep{\fill}}c@{\extracolsep{0pt}}l@{}}
				&    & {\footnotesize\slshape \rightmark }
				\end{tabular*} %\rule{\textwidth}{0.6pt}
			\end{minipage}}
    \def\@oddfoot{
			\begin{minipage}{\textwidth}
		\begin{center}
		%\rule{\textwidth}{0.6pt}
		{\footnotesize\thepage}
		\end{center}
		\end{minipage}}
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            \thechapter. \ %
          \fi
        \fi
        ##1}}}}

\def\ps@plain{
	\let\@oddhead\@empty\let\@evenhead\@empty
	\def\@evenfoot{
		\begin{minipage}{\textwidth}
		\begin{center}
		%\rule{\textwidth}{0.6pt}
		{\footnotesize\thepage}
		\end{center}
		\end{minipage}}
	\def\@oddfoot{
		\begin{minipage}{\textwidth}
		\begin{center}
		%\rule{\textwidth}{0.6pt}
		{\footnotesize\thepage}
		\end{center}
		\end{minipage}}
	\let\@mkboth\@gobbletwo
	\let\chaptermark\@gobble
	\let\sectionmark\@gobble	
	}
	
	\def\ps@myheadings{%
    \let\@oddhead\@empty\let\@evenhead\@empty
    \def\@evenfoot{{\scriptesize \thepage\hfil\slshape\leftmark}}%
    \def\@oddfoot{{\scriptesize {\slshape\rightmark}\hfil\thepage}}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }

  \if@titlepage
  \newcommand\maketitle{\normalsize
  \begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let\footnote\thanks
  \null\vfil % set null at top to make vskip work
  \vskip 2em
  \begin{center}%
    {\LARGE\bfseries \@title}%
    \vskip 6em%
    %{\large
     \vskip 2em%
		  By 
		   \vskip 1em%

		  {\bfseries\@author}
		  
		   \vskip 3em%
		   	 \ssp	 

	  	  {A \@doctype} \\ 
		  Submitted to the Faculty of Graduate Studies  \\
through the \@dept\ \\
in Partial Fulfillment of the Requirements for \\
the Degree of \@degree\ \\
 at the University of Windsor
      %\end{tabular}
      %\par}%
      \vskip 7.0em%
      Windsor, Ontario, Canada \par
      
    
      \vskip 2.0em%
      \@defenseyear
      \vskip 4.0em
      \copyright  \@defenseyear \  \@author
  \end{center}
  
  \par
  \@thanks
  \vfil\null
  \if@twoside
  	\clearpage
  	\thispagestyle{empty}
  	\newpage
  \fi
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
%  \global\let\@author\@empty
  \global\let\@date\@empty
%  \global\let\@title\@empty
%  \global\let\title\relax
%  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax

}
\else
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
%  \global\let\@author\@empty
  \global\let\@date\@empty
%  \global\let\@title\@empty
  \global\let\title\relax
%  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
 \newcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE\bfseries \@title}%
    \vskip 6em%
	 \ssp	 
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
		  by \\ \\ \\
		  {\bfseries\@author} \\ \\ \\ \\ \\
	  	  {A \@doctype} \\ 
		  Submitted to the College of Graduate Studies and Research through the \\ Department of Electrical and Computer Engineering in partial fulfillment \\ of the requirements for the Degree of \@degree\ at the \\ University of Windsor
      \end{tabular}\par}%
      \vskip 20.0em%
    {\normalsize Windsor, Ontario, Canada \\ \@defenseyear \par}%       % Set date 
		\dsp  
  \end{center}\par
  \@thanks
  \vfil\null
  \if@twoside
  	\clearpage
  	\thispagestyle{empty}
  	\newpage
  \fi
\fi








\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
%\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand{\chaptername}{CHAPTER}
\renewcommand{\thechapter}{\@Roman\c@chapter}
\renewcommand \thesection {\@arabic\c@section}


%\renewcommand \thesection {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\frontmatter{%
    \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}}
\newcommand\mainmatter{%
    \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}}
\newcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname~\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
                \null
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
 % \vspace*{20\p@}%
  {\parindent \z@ \raggedright \normalfont
	 \rule{\textwidth}{4.0pt}
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
		  %\vskip 10\p@
	
        \huge\bfseries{\@chapapp\space \thechapter}
        \par\nobreak
        \vskip 10\p@
      \fi
    \fi
    \interlinepenalty\@M
	 {\em \huge \bfseries #1\par\nobreak}
    \vskip 15\p@
	 \hsp
	 %\hfill \begin{minipage}[t]{3.755555in}{\scriptsize\@chapterabstract} \end{minipage} \hspace*{1cm}
  	 \dsp
	 \vskip 5\p@	 
	 \rule{\textwidth}{4.0pt}
	 \vskip 5\p@
	 %\chapterabstract{ }
  }}
 
\def\@makevitahead#1{%
  \vspace*{20\p@}%
  {\parindent \z@ \raggedright \normalfont
	 \rule{\textwidth}{4.0pt}
	  %\vskip 10\p@
     %\huge\bfseries \underline{\@chapapp\space \thechapter}
    \par\nobreak
    \vskip 20\p@
    \interlinepenalty\@M
	 {\em \huge \bfseries #1\par\nobreak}
    \vskip 15\p@
	 \hsp
	 %\hfill \begin{minipage}[t]{3.755555in}{\scriptsize\@chapterabstract} \end{minipage} \hspace*{1cm}
  	 \dsp
	 \vskip 20\p@	 
	 \rule{\textwidth}{4.0pt}
	 \vskip 30\p@
	 %\chapterabstract{ }
  }} 

\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\if@compatibility
\newenvironment{titlepage}
    {%
      \cleardoublepage
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\z@
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
    }
\else
\newenvironment{titlepage}
    {%
      \cleardoublepage
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi
%\newcommand\appendix{\par
%  \setcounter{chapter}{0}%
%  \setcounter{section}{0}%
%  \gdef\@chapapp{\appendixname}%
%  \gdef\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
%\renewcommand\theequation
%  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}%[chapter]
%\renewcommand \thefigure
 %    {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\def\figure{\@float{figure}}
\def\endfigure{\end@float} 
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}
%\RequirePackage{subfigure}
%\renewcommand{\thesubfigure}{\arabic{subfigure}}


%\newenvironment{figure}
%               {\@float{figure}}
%               {\end@float}
%\newenvironment{figure*}
%               {\@dblfloat{figure}}
%               {\end@dblfloat}
\newcounter{table}%[chapter]
%\renewcommand \thetable
%     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\def\table{\@float{table}}
%\let\endtable\end@float
\def\endtable{\end@float}		% Gerry January 2008
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}

%\newenvironment{table}
%               {\@float{table}}
%               {\end@float}
%\newenvironment{table*}
%               {\@dblfloat{table}}
%               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
\clearpage
\thispagestyle{plain}
\null\hfill\contentsname\hfill\null\par
%\addcontentsline{toc}{chapter}{\normalsize \contentsname}
    {\ssp
    \@starttoc{toc}%!TEX encoding = UTF-8 Unicode
    }
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{2em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\newcommand\listoffigures{%
\clearpage
\thispagestyle{plain}
\null\hfill\listfigurename\hfill\null\par
\addcontentsline{toc}{chapter}{\normalsize \listfigurename}
    \@starttoc{lof}%!TEX encoding = UTF-8 Unicode
}
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listofappendix{%
\clearpage
\thispagestyle{plain}
\null\hfill\listappendixname\hfill\null\par
\addcontentsline{toc}{chapter}{\normalsize \listappendixname}
    \@starttoc{lof}%
 }
\newcommand\listoftables{%
\clearpage
\thispagestyle{plain}
\null\hfill\listtablename\hfill\null\par
\addcontentsline{toc}{chapter}{\normalsize \listtablename}
    \@starttoc{lot}%

}
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\chapter*{\bibname
        \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
		\addcontentsline{toc}{chapter}{\normalsize \bibname}
		\ssp	  
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist
	   \dsp }
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
    
    \def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\defenseyear}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{headings}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\endinput
%%
%% End of file `vlsithesis.cls'.
