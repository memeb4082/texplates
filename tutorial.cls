\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tutorial}[2014/08/16 Example LaTeX class]

\LoadClass[12pt]{article}
% Define your commands
\newcommand{\unitname}[1]{\def\@unitname{#1}}
\newcommand{\unitcode}[1]{\def\@unitcode{#1}}
\newcommand{\unitcoordinator}[1]{\def\@unitcoordinator{#1}}
\RequirePackage{subcaption}
\RequirePackage{glossaries}
\RequirePackage{derivative}
\RequirePackage{geometry}
\RequirePackage{parskip}
\RequirePackage{float}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{graphicx}
\RequirePackage{lipsum}
\RequirePackage{minted}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{booktabs}
\RequirePackage{listings}
\RequirePackage{inconsolata}
\RequirePackage[hidelinks]{hyperref}
\geometry{a4paper, left=15mm,right=15mm,top=20mm,bottom=20mm}

% Define the custom title page
\renewcommand{\maketitle}{
        \begin{minipage}{0.5\linewidth}
            \begin{flushleft}
                \includegraphics[height=0.08\textheight]{logo.png}
            \end{flushleft}
        \end{minipage}
        \begin{minipage}{0.5\linewidth}
            \begin{flushright}
                \Large{\@unitcode}\\
                \Large{\@unitname}
            \end{flushright}
        \end{minipage}\\
        \vspace{0.01\textheight}
        \hrule
}
\setcounter{secnumdepth}{6}
\setcounter{tocdepth}{5}
\renewcommand{\footrulewidth}{0.4pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\@unitname}
\fancyhead[R]{\nouppercase{\leftmark}}
\fancyfoot[L]{\@unitcoordinator}
\fancyfoot[R]{Page \thepage\ of \pageref{LastPage}}
\renewcommand{\headrulewidth}{0.4pt} % Add this line for the header rule

\endinput

