
% --------------- Identification --------------------
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{tjumaster}[2014/11/12 Doris Yang]
 
\LoadClass[a4paper,twoside]{article}   % 12pt是小四

% ------------------- General Settings ------------------
\setcounter{secnumdepth}{4} % 让paragraph当四级标题

%--------------------------- 页眉 页脚 页码 ---------------------------
\RequirePackage{fancyhdr}


%宋体五号,单页:右上角;双页:左上角,Abstract 部分用 Times New Roman 体,五号

% \lhead{}
% \chead{}
% \makeatletter
% \rhead{\thesis@ctitle}
% \makeatother
% \lfoot{}
% \rfoot{}
%\cfoot{\song \wuhao 第\enspace\thepage\enspace 页 }
% \renewcommand{\headrulewidth}{1pt}
% \renewcommand{\footrulewidth}{1pt}


% \fancyhead{}
% \fancyhead[RO,LE]{Thesis Title}
% \fancyfoot{}
% \fancyfoot[LE,RO]{\thepage}
% \fancyfoot[LO,CE]{Chapter \thechapter}
% \fancyfoot[CO,RE]{Author Name}


% 为区分目录和正文
\newcommand{\frontmatter}{
	\pagenumbering{Roman} 
	\pagestyle{fancy}
	%called after fancy 让leftmark不显示数字T_T， 确保放在\pagestyle后
	\renewcommand{\sectionmark}[1]{\song \wuhao  \markboth{##1}{} }	
	\makeatletter 
		\fancyhead{}
		%单数页页眉在右上角，双数页在左上角 leftmark含有章节名称
		\fancyhead[RO,LE]{\song \wuhao 同济大学 \hspace*{0.5em} 硕士学位论文  \leftmark}
	\makeatother
	}


\newcommand{\mainmatter}{
	\pagenumbering{arabic} 
	\setcounter{page}{1} 
	\pagestyle{fancy}
	%called after fancy 让leftmark不显示数字T_T
	\renewcommand{\sectionmark}[1]{ \markboth{##1}{} }	
	\makeatletter 
		%单数页页眉在右上角，双数页在左上角
		%正文的单数页页眉为章标题:“第 X 章 XXXXXX”,双数页 页眉为论文标题;“同济大学 硕/博士学位论文 中文题目”
		\fancyhead{}
		\fancyhead[RO]{\song \wuhao 第 \thesection 章   \leftmark }
		\fancyhead[LE]{\song \wuhao 同济大学 \hspace*{0.5em} 硕士学位论文 \hspace*{0.5em} \thesis@ctitle }
	\makeatother} 

%估计还需要个backmatter

\newcommand{\backmatter}{
	%页眉页脚
	\pagestyle{fancy}
	\renewcommand{\sectionmark}[1]{ \markboth{##1}{} }	
	\makeatletter 

		\fancyhead{}
		\fancyhead[LE, RO]{\song \wuhao 同济大学 \hspace*{0.5em} 硕士学位论文 \hspace*{0.5em} \leftmark  }
	\makeatother

	%改变section题目样式
	\titleformat{\section}{\centering \bf  \hei \sanhao}{}{1em}{}
	%\renewcommand*{\section}[1]{\section{#1}}

	
} 

% --------------------- Layout -------------------
% 上、下 2.54cm,左、右 3.17cm,页眉、页脚 2.0cm,装订线 0 cm
\usepackage[top=2.54cm, bottom=2.54cm, left=3.17cm, right=3.17cm]{geometry}


% 首行缩进 
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}

% --------------------- Fonts -------------------------------
\usepackage{fontspec}
% English Fonts 字体
\setmainfont{Times New Roman} 	% 英文字体
\setsansfont{Arial} 			% 英文无衬线字体


\usepackage{xltxtra,xunicode}
\usepackage[slantfont,boldfont,CJKnumber]{xeCJK}
%set default Chinese Characteristics
%\setCJKmainfont[BoldFont={Songti SC}, ItalicFont={Kai}]{STXingkai}
\setCJKmainfont{Songti SC}
%fc-list :lang=zh-cn


\setCJKfamilyfont{song}{Songti SC}  % 宋体
\setCJKfamilyfont{hei}{Heiti SC}  % 黑体
\setCJKfamilyfont{kai}{Kaiti SC}  % 楷体
\setCJKfamilyfont{fangsong}{FangSong} % 仿宋
\setCJKfamilyfont{li}{Libian SC}


\newcommand{\kai}{\CJKfamily{kai}}
\newcommand{\fangsong}{\CJKfamily{fangsong}}
\newcommand{\hei}{\CJKfamily{hei}}
\newcommand{\song}{\CJKfamily{song}}
\newcommand{\li}{\CJKfamily{li}}

\newcommand{\arial}{\fontspec{Arial}\selectfont}
\newcommand{\timesnew}{\fontspec{Times New Roman}\selectfont}


\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}		% 初号
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}	% 小初号
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}		% 一号
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}		% 二号
\newcommand{\xiaoerhao}{\fontsize{18pt}{22pt}\selectfont}	% 小二号
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}	% 三号
\newcommand{\xiaosanhao}{\fontsize{15pt}{\baselineskip}\selectfont}	% 小三号
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}		% 四号
\newcommand{\xiaosihao}{\fontsize{12pt}{14pt}\selectfont}	% 小四号
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}	% 五号
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}	% 小五号
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}	% 六号
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}	% 七号

  \renewcommand{\normalsize}{\fontsize{12pt}{14pt}\selectfont}


% ------------------------ Table of Contents 目录 ------------------------
\usepackage{titletoc}
\renewcommand\contentsname{ \hei \sanhao  目 \hspace*{2em} 录 }
% 黑体,三号,加粗居中,单倍行距,段前 24 磅,段 后 18 磅

\titlecontents{section}[0em]{\addvspace{4pt}}%
	          {\xiaosihao\song 第 \thecontentslabel 章 \enspace}
	              {\xiaosihao\song}{\dotfill\contentspage}[\addvspace{0pt}]
% 各章目录 宋体,小四号,行距 18 磅,段前段后 0 磅,两端对 齐,页码右对齐

	\titlecontents{subsection}[2em]{\addvspace{4pt}}%
	          {\xiaosihao\song\thecontentslabel\enspace}%
	              {\xiaosihao\song}{\dotfill\contentspage}[\addvspace{0pt}]
% 宋体,小四号,行距 18 磅,段前段后 0 磅,两端对 齐,页码右对齐,左缩进 2 字符

	\titlecontents{subsubsection}[4em]{\addvspace{4pt}}%
	          {\xiaosihao\song\thecontentslabel\enspace}%
	              {\xiaosihao\song}{\dotfill\contentspage}[\addvspace{0pt}]
% 宋体,小四号,行距 18 磅,段前段后 0 磅,两端对 齐,页码右对齐,左缩进 4 字符

% macro for hiding the section in toc
\newcommand{\nocontentsline}[3]{}
\newcommand{\tocless}[2]{\bgroup\let\addcontentsline=\nocontentsline#1{#2}\egroup}


%---------------------------- 各章节标题 ---------------------------

% 各章节标题
\RequirePackage{titlesec}

\titleformat{\section}{\centering \bf  \hei \sanhao}{第\,\thesection\,章}{1em}{}
% 章节标题 黑体,三号,加粗居中,单倍行距,段前 24 磅,段后 18 磅, 章 序号与章名间空一个字符

\titleformat{\subsection}{ \hei \xiaosanhao}{\thesubsection}{1em}{}
% 一级标题 黑体,小三号,顶左,单倍行距,段前 24 磅,段后 6 磅,序号 与题名间空一个字符

\titleformat{\subsubsection}{ \hei \sihao}{\thesubsubsection}{1em}{}
% 二级标题 黑体,四号,顶左,单倍行距,段前 12 磅,段后 6 磅,序号与 题名间空一个字符

\titleformat{\paragraph}{ \hei \xiaosihao}{\theparagraph}{1em}{}
% 三级标题 黑体,小四顶左,单倍行距,段前空 12 磅,段后空 6 磅,序号 与题名间空一个字符

%\renewcommand\sectionbreak{\clearpage} % 在每个section结束之后开始新的页

% \RequirePackage{etoolbox}

%\AfterEndEnvironment{section}{\clearpage}


% ------------------------------------ 参考文献 ----------------------------
\RequirePackage{etoolbox}
\patchcmd{\thebibliography}{\addcontentsline{toc}{section}{\refname}}{}{}{}
%\patchcmd{\thebibliography}{\section{参考文献}}{}{}{}
\renewcommand {\refname}{参考文献}


% ------------------------------------ 图 & 表 --------------------------------
%\newcommand{/tabincell}[2]{/begin{tabular}{@{}#1@{}}#2/end{tabular}}
%表格换行支持

\renewcommand\tablename{表}
\renewcommand\figurename{图}

%带章节号的图表
 \makeatletter
	\renewcommand{\thefigure}{\ifnum \c@section>\z@ \thesection.\fi \@arabic\c@figure}
	\renewcommand{\thetable}{\ifnum \c@section>\z@ \thesection.\fi \@arabic\c@table}
\makeatother


% --------------------------------- 日期格式 ---------------------
\RequirePackage{CJKnumb}
%\renewcommand{\today}{\number\year 年 \number\month 月 \number\day 日}  
%\renewcommand{\today}{\CJKnumber\year 年 \CJKnumber\month 月 \CJKnumber\day 日}

\RequirePackage{titling}
\pretitle{\begin{center}\erhao \hei \textbf}
\posttitle{\par\end{center}\vskip 0.5em}



% ------------------------------ Thesis Info -------------------------------

% 这部分代码太机智了！
\def\thesis@define#1{
	\expandafter\def\csname #1\endcsname##1{%
	    \expandafter\def\csname thesis@#1\endcsname{##1}
	}
	\csname #1\endcsname{}
}

% variables on the cover


\thesis@define{ctitle}
\thesis@define{etitle}

\thesis@define{csubtitle}
\thesis@define{esubtitle}

\thesis@define{cauthor}
\thesis@define{eauthor}

\thesis@define{studentid}

\thesis@define{cdepartment}
\thesis@define{edepartment}

\thesis@define{cdiscipline}
\thesis@define{ediscipline}

\thesis@define{cmajor}
\thesis@define{emajor}

\thesis@define{csupervisor}
\thesis@define{esupervisor}

\thesis@define{cdate}
\thesis@define{edate}


% \newcommand{\thesis}[2]{
% 	\expandafter \newcommand \expandafter{\csname thesis@#1 \endcsname} {#2}
% }

% ------------------------ Cover ------------------------
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{array}
\makeatletter
	\def \makethesiscover{
	\begin{titlepage}
		\pagestyle{empty}
		%------------------ 中文封面 ------------------------
		\begin{center}
			\includegraphics[width=10.2cm]{tongji-logo.png} \\
			{\vspace{1em} \li \erhao \bfseries 硕士学位论文} \\
			\vspace*{3cm}
			\begin{table}[h]
				\centering
				\fontsize{21pt}{35pt} \selectfont \hei \bfseries
				\begin{tabular}{p{0.8\linewidth}<{\centering}}
					 \thesis@ctitle \\
				\end{tabular}
			\end{table}
			\vspace*{4cm}
		\end{center}

		 \hspace*{4.5cm}{\sanhao \fangsong 姓\hspace*{2em}名: \hspace*{1em} \thesis@cauthor}  

		\vspace{1em}
		\hspace*{4.5cm}{\sanhao \fangsong 学\hspace*{2em}号: \hspace*{1em} \thesis@studentid} 

		\vspace{1em}
		\hspace*{4.5cm}{\sanhao \fangsong 所在院系: \hspace*{1em} \thesis@cdepartment} 

		\vspace{1em}
		\hspace*{4.5cm}{\sanhao \fangsong 学科门类: \hspace*{1em} \thesis@cdiscipline}  

		\vspace{1em}
		\hspace*{4.5cm}{\sanhao \fangsong 学科专业: \hspace*{1em} \thesis@cmajor} 

		\vspace{1em}
		\hspace*{4.5cm}{\sanhao \fangsong 指导教师: \hspace*{1em} \thesis@csupervisor} 


		\vspace{1.5em}
		\begin{center}
		 \sanhao \song \thesis@cdate
		\end{center}

		\clearpage

		%--------------------- English Cover ------------------

		\begin{center} 
		\includegraphics[width=10.2cm]{tongji-logo.png} \\
		\vspace{1em}
			{\fontsize{14pt}{25pt}\selectfont
			A dissertation submitted to \\
			Tongji University in comformity with the requirements for \\
			the degree of Master of Computer Science\\}
	
			\vspace*{3cm}
			\begin{table}[h]
				\centering
				\arial \fontsize{18pt}{24pt}\selectfont \bfseries
				\begin{tabular}{p{0.8\linewidth}<{\centering}}
					 \thesis@etitle \\
				\end{tabular}
			\end{table}
			\vspace*{4cm}
		\end{center}

		\begin{center}
			\sanhao
			\begin{tabular}{l  p{5cm}}
				Candidate: & \thesis@eauthor \\ \\
				Student Number: & \thesis@studentid \\\\
				School / Department: & \thesis@edepartment \\\\
				Discipline: & \thesis@ediscipline \\\\
				Major: & \thesis@emajor \\\\
				Supervisor: & \thesis@esupervisor

			\end{tabular}
		\end{center}
		
		 

		\vspace{1.5em}
		\begin{center}
		 \sanhao \song \thesis@edate
		\end{center}
		\clearpage

		% -------------------- don't know how to describe ...装订线？----
		\makeatletter
		\begin{table}
		\centering
			\fangsong \bfseries \fontsize{14pt}{20pt}  \selectfont  
			\begin{tabular}{|m{1em}<{\centering}|}
				\hline
				\vspace*{1cm}
				\thesis@ctitle
				\vspace*{0.5cm}
				\thesis@cauthor
				\vspace*{0.5cm}
				同济大学
				\vspace*{1cm} \\ \hline
			\end{tabular}
		\end{table}
		\makeatother
		\clearpage

		
		% -------------------- 学位论文版权使用授权书 ------------------
		\begin{center}
			\xiaoerhao \bfseries \hei
			学位论文版权使用授权书\\
		\end{center}

		
		\begin{spacing}{1.5}
		\song \fontsize{14pt}{20pt} \selectfont  
			本人完全了解同济大学关于收集、保存、使用学位论文的规定，
		同意如下各项内容：按照学校要求提交学位论文的印刷本和电子版本；
		学校有权保存学位论文的印刷本和电子版，
		并采用影印、缩印、扫描、数字化或其它手段保存论文；
		学校有权提供目录检索以及提供本学位论文全文或者部分的阅览服务；
		学校有权按有关规定向国家有关部门或者机构送交论文的复印件和电子版；
		在不以赢利为目的的前提下，学校可以适当复制论文的部分或全部内容用于学术活动。\\
		\end{spacing}
		
		\begin{flushright}
			\song \fontsize{14pt}{20pt} \linespread{1.5} \selectfont  
			学位论文作者签名：\hspace*{3cm} \\
			年 \hspace{2em} 月 \hspace{2em} 日 \hspace*{2em} \\
		\end{flushright}
		\clearpage


		% -------------------- 同济大学学位论文原创性声明 ------------------
		\begin{center}
			\xiaoerhao \bfseries \hei
			同济大学学位论文原创性声明\\
		\end{center}

		
		\begin{spacing}{1.5}
		\song \fontsize{14pt}{20pt} \selectfont  
			 \hspace{1em}
			本人郑重声明:所呈交的学位论文,是本人在导师指导下,进行 
			研究工作所取得的成果。除文中已经注明引用的内容外,本学位论文 
			的研究成果不包含任何他人创作的、已公开发表或者没有公开发表的 
			作品的内容。对本论文所涉及的研究工作做出贡献的其他个人和集 
			体,均已在文中以明确方式标明。本学位论文原创性声明的法律责任由本人承担。\\
		\end{spacing}
		
		\begin{flushright}
			\song \fontsize{14pt}{20pt} \linespread{1.5} \selectfont  
			学位论文作者签名：\hspace*{3cm} \\
			年 \hspace{2em} 月 \hspace{2em} 日 \hspace*{2em} \\
		\end{flushright}
		\clearpage
		\end{titlepage}
	}
\makeatother

% --------------------- 中文摘要 -----------------%
%摘要:黑体,三号,加粗居中,单倍行距, 段前 24 磅,段后 18 磅

\newenvironment{cabstract}
	{ 
	\makeatletter 
	%单数页页眉在右上角，双数页在左上角
	\fancyhead{}
		\fancyhead[LE,RO]{\song \wuhao 同济大学 \hspace*{0.5em} 硕士学位论文 \hspace*{1em} 摘要 }
	\makeatother
	\begin{center}
			\fontsize{15.75pt}{34pt} \selectfont \hei
			\bfseries 摘\hspace{2em}要
	\end{center} 
	\begin{spacing}{1.5} \song \xiaosihao \selectfont  }
	% 宋体,小四号,行距 20 磅,段前段后 0 磅
	{ \end{spacing} \clearpage}

\newcommand{\makeckeyword}[1]{\vspace*{0.6cm} \noindent \textbf{关键词：}#1}


% --------------------- English Abstract-----------------%
%摘要:黑体,三号,加粗居中,单倍行距, 段前 24 磅,段后 18 磅

\newenvironment{eabstract}
	{ 
		\makeatletter 
		%单数页页眉在右上角，双数页在左上角
		\fancyhead{}
		\fancyhead[LE,RO]{\song \wuhao 同济大学 \hspace*{0.5em} 硕士学位论文 \hspace*{1em} 摘要 }
	\makeatother
	\begin{center}
			\fontsize{15.75pt}{34pt} \selectfont \arial
			\bfseries Abstract
	\end{center} 
	 \begin{spacing}{1.5} \timesnew \xiaosihao \selectfont  }
	{ \end{spacing} \clearpage
		% for table of contents .... bad solution
		\fancyhead{}
		\fancyhead[LE,RO]{\song \wuhao 同济大学 \hspace*{0.5em} 硕士学位论文 \hspace*{1em} 目录 }
	}

	\newcommand{\makeekeyword}[1]{\vspace*{0.6cm} \noindent \textbf{Kew Words: }#1}

	



% ------------------- Testing Area -------------------
\newenvironment{hugespace}{\erhao \li \begin{center}  测试环境\\}
	{\end{center} \normalsize}





