% University of Windsor
% Master's Thesis LaTeX Style File v0.1
% Aaron Mavrinac <mavrin1@uwindsor.ca> (2007)
% Revised by Jie Liang <liang.jie.cnca@gmail.com> (2009)
% Compatible with the Guidelines for Theses viewed in 2009.08

\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{uw_masters_thesis_new}[2007/11/20 U of W Master's Thesis]

%%%%% Page Setup %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% paper & margins
\RequirePackage{geometry}
\geometry{letterpaper,includeheadfoot,left=3.8cm,top=2.5cm,right=2.5cm,bottom=2.5cm}

% spacing
\RequirePackage{setspace}
%\onehalfspacing

% font
\def\@ptsize{2}
\RequirePackage{pslatex}
%\renewcommand{\sfdefault}{phv}
%\renewcommand{\rmdefault}{ptm}
%\renewcommand{\ttdefault}{pcr}
\normalfont\selectfont

% default page style
\pagestyle{headings}

%%%%% Report Formatting %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%% Thesis Information %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\dept#1{\gdef\@dept{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\advisordept#1{\gdef\@advisordept{#1}}
\def\coadvisor#1{\gdef\@coadvisor{#1}}
\def\coadvisordept#1{\gdef\@coadvisordept{#1}}
\def\deptreader#1{\gdef\@deptreader{#1}}
\def\deptreaderdept#1{\gdef\@deptreaderdept{#1}}
\def\extreader#1{\gdef\@extreader{#1}}
\def\extreaderdept#1{\gdef\@extreaderdept{#1}}
\def\defchair#1{\gdef\@defchair{#1}}
\def\defchairdept#1{\gdef\@defchairdept{#1}}
\def\submitdate#1{\gdef\@submitdate{#1}}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}

\def\@title{}\def\@author{}\def\@dept{}\def\@degree{}
\def\@advisor{}\def\@coadvisor{*}\def\@deptreader{}\def\@extreader{}
\def\@submitdate{\ifcase\the\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\the\year}

% copyright year, fall theses are in following year
\ifnum\month>11
  \@tempcnta=\year \advance\@tempcnta by 1
  \edef\@copyrightyear{\number\the\@tempcnta}
\else
  \def\@copyrightyear{\number\the\year}
\fi

%%%%% Title Page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\titlepage{%
  \thispagestyle{empty}
  \null\vskip1in%
  \begin{center}
    \textbf{\large\uppercase\expandafter{\@title}}
\vfill
    by

    \textbf{\expandafter{\@author}}
  \end{center}
  \vfill
  \vfill
  \begin{center}
\normalsize
  A Thesis

  Submitted to the Faculty of Graduate Studies

  through \@dept

  in Partial Fulfillment of the Requirements for

  the Degree of Master of \@degree~at the

  University of Windsor
  \vskip1in
  Windsor, Ontario, Canada

  \@copyrightyear

  %\end{center}
%  \vfill
  %\begin{center}
  \copyright~\@copyrightyear~\@author
  \end{center}\vskip.5in\newpage}

%%%%% Approval Page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newlength{\signaturespace}
\setlength{\signaturespace}{.5in}

\long\def\signature#1{%
\begin{center}
\vspace{\signaturespace}
\vrule width 3in height 0.4pt depth 0pt\\ #1
\end{center}}

\def\approvalpage{%
  \thispagestyle{empty}
  \begin{center}
    \textbf{\large\uppercase\expandafter{\@title}}

    by

    \textbf{\expandafter{\@author}}
  \end{center}
  \vfill
  \begin{center}
  \large\uppercase\expandafter{Approved By:}
  \end{center}
  \vfill
  \signature{\@extreader\\ \@extreaderdept}
  \vfill
  \signature{\@deptreader\\ \@deptreaderdept}
  \vfill
  \signature{\@advisor, Advisor\\ \@advisordept}
  \vfill
  \if*\@coadvisor \else
  \signature{\@coadvisor, Co-Advisor\\ \@coadvisordept}
  \vfill\fi
  \signature{\@defchair, Chair of Defense\\ \@defchairdept}
  \vfill
  \begin{flushright}
  \@submitdate
  \end{flushright}\newpage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
