---
title: "Analyzing Data for School District Improvement"
author:
- Professor Strabismus
- University of Mars
date: "2024-02-16"
output:
  word_document:
    fig_caption: true
    keep_md: true
  bookdown::pdf_document2:
    latex_engine: xelatex
    fig_caption: true
    documentclass: book
    classoption: 16pt
    includes:
      in_header: dsheader.tex
  bookdown::html_document2:
    css:
    - "swart-20240104.css"
    - tachyons.min.css
    - "r-colors.css"
    fontsize: 18pt
    includes:
      in_header: header.html
  pdf_document: default
header-includes:
- \usepackage{geometry}
- \geometry{top=1.00in,left=1.00in,bottom=1.00in,right=1.00in}
- \setlength\parindent{0.25in}
- \usepackage{xcolor}
- \usepackage{tcolorbox}
- \usepackage{ragged2e}
- \usepackage{hyperref}
- \usepackage{float}
- \hypersetup{colorlinks=true, linkcolor=MidnightBlue, urlcolor=BlueViolet, citecolor=BrickRed}
- \urlstyle{same}
- \graphicspath{{pbc}{img}}
- \usepackage{caption}
- \captionsetup[figure]{font=Large}
- \captionsetup{font=Large}
- \usepackage{longtable}
subtitle: "***or...Dancing the 'Texas Twenty-Two-Step'***"
linestretch: 1
fontsize: 18pt
knitr:
  opts_chunk:
    echo: false
    error: false
    warning: false
    message: false
---

\Large














> **"My aim here is to contribute something to the improvement of learning in our school district; or any school district.  My basic supposition is that school boards and administrators will welcome help to create rational policy action aimed at improving future learning in their district."**
> 
> — Professor Strabismis
>
> *University of Mars*

\vspace{0.5in}

This paper is for those striving to improve the system of learning in their school district.  It is directed toward school boards and superintendents, but anyone can use the simple theory and techniques to significantly improve their teaching, classrooms, campuses, and departments.  


To improve our systems of learning in a rational, systematic way we need new information beyond that supplied by merely descriptive reports.  Only a few simple changes are required.  


Currently, neither the Texas Education Agency (TEA) nor the Texas Association of School Boards (TASB) offer training or support in the basic quantitative data analysis theory and methods that would give our boards and administrators access to the new information needed.


***My hope here is to generate the collaborative interest and energy needed to put these critical resources in the hands of all school boards and administrations.***


All that is needed is an open mind, willingness to do things a little differently, and a sense of urgency for getting things done.  That sounds like Texans, to me.


\bigskip

<br>


**BACKGROUND**

\medskip

All school boards and superintendents work very hard to 'keep the lights on' and improve learning in their districts and campuses (or 'campi' if you prefer the Latin form, because it ***is*** funnier).  


Administrtation of budgets for facilities, equipment, personnel, safety and legislative compliance is a function of the managerial skill of the executive team and the school board.  It is usually well managed with thoughtful planning and careful attention to fiscal details.  Both TEA and TASB supply quality education and support for these efforts.


Improving learning in a district is a very different challenge and requires a different set of skills and knowledge.  School boards, in particular, need help answering the important, practical questions such as:

*  These numbers vary from period to period.  **Does that variation signal anything important?**  Could they be due to chance?

*  Is the variation due to normal **random fluctuations** that are present in all measurements, or to some strong influence now present in our system?

*  Do these different numbers **constitute a trend** (good, or bad)?

*  What is the **demonstrated capability** of our district to deliver STAAR scores (or any other results) in the varous categories and levels?  In other words, what is **rational** to expect from our system **in the future?**

*  **Should we continue** this approach, **abandon** it, or **continue it with modification?**  

* Should we change something right away with an intervention, **or will that make things worse?**

* Under current leadership, are we improving, staying the same, or getting worse, and **how can we tell?**

<br>

\bigskip

Currently, there are dozens of situations where we need better answers to questions like these.  








Here are a just a few examples where we seek those answers, but find none:\n\n
| Example Metric                         | Example Metric                |\n
|--------------------------------------- | -----------------------------|\n
| STAAR scores                          | Survey results                |\n
| District improvement plans            | TAPR reports                  |\n
| Dropout rates                         | Pedagogy review               |\n
| On-time arrivals for buses            | Attendance rates              |\n
| Superintendent evaluations            | Graduation rates              |\n
| Superintendent searches               | Accountability ratings        |\n



To make the best decisions, the 'description-only' reports we currently use to evaluate the performance of programs, pedegogy, people, or anything else must come to us in a slightly different format than what we are used to seeing.  


Any evaluation of results must provide us with evidence beyond 'snapshot' reports, or even two or three point comparisons.  As discussed later, trends cannot be established with only two or three data points.


\bigskip

This is a Process Behavior Chart (PBC) and it is an example of what a report looks like that contains the necessary information to help us.  It analyzes public STAAR data provided by TEA, and includes a brief interpretation of the chart.  The PBC provides a baseline (context) for evaluating both past and future performance.

<br>

\medskip










```r
# Word output

cat("Fig: Data taken from 5 TEA 'Snapshot' description-only reports and 1 TAPR description-only report\n")
```

```
## Fig: Data taken from 5 TEA 'Snapshot' description-only reports and 1 TAPR description-only report
```

```r
knitr::include_graphics("pbc/xmr-2016-2022-math-approaches-combo.png")
```

![](pbc/xmr-2016-2022-math-approaches-combo.png)<!-- -->

<br>

\bigskip

INTERPRETING THE CHART  


\bigskip

* The measuremenets do go up and down, but ***there is no evidence that the movements are more than random variation***.  The ups and downs are due to the many random forces acting on the cause system that produced the results.  This is called ***common cause variation*** because the forces acting on the system are common to all the results we see.


* In this case, the chart shows that all measurements fall between the calculated Upper Limit (UCL) and Lower Limit (LCL), with no statistical trends identified.  Accordingly, the process is ***stable***, with a ***predictable capability***.  Of the many forces influencing the results, no one of them is predominant.  If one force (or a small combination) was predominate the chart would reveal it.


* If the process remains fundamentally the same, **the proportion of students in the district taking the STAAR exam in Math that reach the level of 'Approaches Grade Level Standard, or Higher' will continue to fluctuate between 91% and 74%, with an average proportion of 81% (the CL)**.  


* Given the data in the chart, any expectation of results outside those limits, without a significant change to the system, ***would not be justified - at all***.  Even if that expectation comes from the legislature and the TEA in the form of revised rating criteria.


* Any future result, if it falls inside the calculated boundaries ***does not signify an increase or decrease in the performance of the process.***  Understanding this rule prevents 'over-reacting' to random fluctuations.  Every 'up' or 'down' does not mean we are doing better, or worse.


* Confidence in the interpretation will **increase** as you add more data to the chart.  For example, it would be helpful to add years prior to 2016 to see if our interpretation of the data changed.


* This one chart contains all the information this data can reveal.  ***If you need or want more information you have to collect more data***.

<br>

\bigskip







<br>

\bigskip







<br>

\bigskip


<br>
<br>

\vspace{0.5in}

**WHAT'S WRONG WITH THE 'DESCRIPTION-ONLY' REPORTS WE USE NOW?**

\bigskip

The aim of a TEA report is descriptive.  ***How many or how much.***  They are estimates of how many people belong to this or that category for a specified academic year.  Or, to report the financial aspects of operations during the school year.  Their aim is **NOT** to find out **WHY** there are so many or so few in this or that category: merely how many.  


The action to be taken is on the district, campus, or people studied.  It is a process designed for handing out reward and punishment.


On the other hand, school boards look to take action on district-level processes (the cause-system) that produced the data described in the TEA 'description-only' reports.  The aim of board policy is to ***improve learning in the future.***  


Interest centers on future learning, not the learning of the past.   For example: adopt Policy B over A, or hold on to Policy A, or continuation (with study) of Policy B.


The TEA collects data from every school in Texas, performs a multitude of calculations, and produces reams of 'description-only' reports and tables summarizing their results by academic year.  These 'description-only' reports consist primarily of calculations mandated by the state legislature, including those designed to allow districts to fulfill their public notification requirements.  

\medskip

These statistical summaries are available to the public and the school districts.  Unfortunately for the public and the school districts, the information is not nearly as helpful as it could be.  In fact, it takes so much 'data wrangling' to put it into a form that is remotely helpful for assessing and improving district and campus learning that it is simply not done.


Instead, administrators and school boards stare at endless rows and columns of mind-numbing data fragments that are 'sliced and diced' to an extent that even [\textcolor{blue}{\url{Ron Popeil}}](https://en.wikipedia.org/wiki/Ron_Popeil) [the inventor of the Chop-O-Matic](https://en.wikipedia.org/wiki/Ron_Popeil) would be envious!  


After ernestly pouring over such 'description-only' reports users are left with a vague sense that a Ouija Board might be better!

<br>

\bigskip
  
Here's a partial example from a 'description-only' TEA report called a 'Snapshot':
<br>

\medskip






\medskip

The entire report can be found here:  
[\textcolor{blue}{\url{PDF}}](https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&ccyy=2022&lev=D&id=094902&prgopt=reports%2Fsnapshot%2Fsnapshot.sas) 

[(HTML)](https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&ccyy=2022&lev=D&id=094902&prgopt=reports%2Fsnapshot%2Fsnapshot.sas)

\bigskip

<br>
And, here's a partial example from a TEA 'description-only' report called a 'School Report Card':

<br>

\medskip






<br>


The entire report can be found here:  
[\textcolor{blue}{\url{PDF}}](https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&ccyy=2022&lev=C&prgopt=reports/src/src.sas&id=094902003) 

[(HTML)](https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&ccyy=2022&lev=C&prgopt=reports/src/src.sas&id=094902003)

  
\bigskip
  
<br>
<br>
  
\bigskip


<br>

\bigskip



**OBSTACLES TO IMPROVEMENT** 
  
So, what is a school district to make of these mountains of aggregated numbers?  Do they help districts improve learning in the future?  In their present form, the answer is a resounding "NO!"  
<br>

\bigskip

**OBSTACLE #1**


When it comes to improving the system of education in a district this 'snapshot' view of the data has several very big problems.  One is aggregation.  The TEA 'description-only' reports aggregate more than one rating level into a single reporting level.  It combines the 'Approaches Grade Level' AND the 'Meets Grade Level' AND the 'Masters Grade Level' ratings all into one combined total and calls it the "Approaches Grade Level Standard AND HIGHER" level.


To make that category useful for improvement efforts we have to break it into the three separate levels, so each represents a single situation.  Currently, that turns out to be quite tedious and extremely time-consuming.  Just for fun, I call this situation 'dancing the Texas Twenty-Two-Step' - because it will take at least twenty-two additional steps to make the measurements useful!  


The 'Snapshot' 'description-only' report offered by the TEA is a good example.  My hat is off to their programmers.  It is an impressive compilation of statistics all in one place.  It is well-suited for the needs of the TEA and their reporting responsibilities to the legislature; but completely ill-suited for helping the concerned school board, superintendent, or even tax-paying citizen make an analysis aimed at improving future learning.  One might call it a triumph of computation over value.  
<br>


Although this aggregation permits TEA to render abstract judgments about a district or campus, the lack of specificity renders these 'description-only' reports unsuitable for understanding any particular process, category or level your board may be interested in monitoring or improving.
<br>
<br>

\bigskip







<br>

\bigskip

Here is an example of aggregated STAAR categories in a TEA 'description-only' report:  







The section reporting STAAR scoring by ethnicity:







<br>

\bigskip


**OBSTACLE #2**


These 'description-only' reports are 'ill-suited' for district improvement efforts for another reason:  the TEA 'description-only' reports are **siloed by academic year**, making it nearly impossible to create a time-period-by-time-period data frame of any categories or levels the board may wish to analyze.  In fact, without time-period-by-time-period data ***no meaningful analysis is possible.***


This siloing of academic years stands as a bristling obstruction to the presentation of baseline data so crucial for analysis of past performance and estimation of future results.  Even the least experienced board members intuitively know the importance of this numerical context when reviewing data for their district.
<br>
<br>

\vspace{0.5in}

**OBSTACLE #3**
<br>

\medskip






\medskip

<br>


Obstacle number 3 is not related to the TEA 'description-only' reports at all.  It has to do with our human nature (or, as Jessica Rabbit put it in the 1988 film 'Who Framed Roger Rabbit':  "I'm not bad, I'm just drawn this way!").


For survival, humans evolved with the ability to rapidly detect patterns.  That instinct can lead us astray when studying our data.  Unfortunately, we quite naturally see 'trends' and 'signals' where there are none.  


Consider that for any three measurements there are at least 10 completely random arrangements that can arise.  And, we have created names to categorize these completely artificial 'trends' that we think we see:

\medskip

<br>






\bigskip

How many of those 'trends' do you see in this example of TEA data placed on a bar chart?







<br>

\bigskip

So, ***we need a analytic report that will separate the 'common cause' variation (routine variation) from the 'special cause' variation that signals a true trend or a detectable event that changes the system.***  


Our current 'description-only' reports do not make that separation for us.


<br>

\bigskip

**OBSTACLE #4**
<br>

\medskip

Obstacle #3 is about our perceptions.  Obstacle #4 is about our emotions.  We have a very human impulse to intervene any time we feel something is 'wrong' and needs to be 'fixed.'  The incentives for board members to seek interventions are many and varied, but the type of changes proposed really matters.  This is a situation where board members must remain vigilant about getting involved in matters that are administrative (the responsibility of the superintendent) and not policy (the responsibility of the board).


The problem arises if we react to a result that is merely random ('common-cause'  variation) as if it were a 'special cause' signal.  This is called 'tampering' and is ***guaranteed to make things worse.***  The variation we observe will increase and our good results will be diluted accordingly.  At worst, we can de-stabalize a stable system.  


This can be particularly acute when there is an 'incident' involving misfortune or safety.  Although rare, these events may be quite upsetting.  However, trying to keep unpleasant events from 'ever happening again' can make things worse, not better.


It is part of the leadership responsibility of boards to provide a measured and rational response when misfortune comes our way.  Knowing about 'common cause' and 'special cause' variation can help us do that. 

<br>

\bigskip




**NEW INFORMATION TO HELP US**


What makes these new analytic reports so powerful are three unique features:

1. Prior period results for the process are ***plotted in time order***, oldest to newest, left to right (the more time periods presented the better).  This is called ***context.***

2. An average (or median) for the entire group of results, plotted as a centerline.  If the process is stable, this is the ***best estimate for future results.***

3. One simple calculation that sets the upper and lower bounds of results we can reasonably expect in the future.  This is called ***analysis.***




\medskip

***All we need are just those three things***; context, estimate of future performance, and analysis.  All three use simple arithmetic; not even algebra.  But, none of the 'descrptive-only' reports currently available have all three elements.  Usually, they have none of the three.


Accordingly, those 'description-only' reports cannot answer these important questions.  We are left only with a vague intuition about what the data are trying to tell us.  Intuition and personal experience have proven to be unreliable guides for action on policy, performance, and pedagogy.

<br>

\bigskip

**ANALYSIS - WHAT IS IT?**  

\medskip

Analysis was developed to help separate the actual signals in the data from the random fluctuations that are always present in any measurement.


In this context analysis means to subject the data to ONE very simple statistical test to see if the system (or process) producing the data shows evidence of being in a ***stable state***, with a ***predictable capability***.  


If stable, this capability will show a range of values that constitute 'normal' for the process.  Until the process itself changes in some fundamental way future measurements will wander between the capability limits; sometimes upward, sometimes downward, sometimes the same.  


<br>

\bigskip







<br>

\bigskip

**OVERCOMING THE OBSTACLES**

As it turns out, creating the analytic reports we need is very simple - **IF** we can get our data into the right form for analysis.  By reporting out results in the usual 'description-only' formats, neither the Texas Education Agency (TEA) nor the Texas Association of School Boards (TASB) appeaer to be able to help us with this particular problem.  It is up to us to take control of our own reporting needs.


<br>

\vspace{0.5in}

**GETTING BLOOD FROM THE TURNIP**

<br>

\bigskip

After an embarrassing amount of time spent 'data wrangling' I was able to construct from the 5 available TEA 'Snapshot' 'description-only' reports, and 1 TAPR 'descriptinve-only' report, a small time-period-by-time-period data frame for STAAR scores for all subject-matter categories at the district-level for the academic years ended 2016-2022.  (No STAAR scores were available for the 2019 academic year.)
<br>

\vspace{0.6in}

The TEA STARR Data Divided Into Constituent Parts for the subject 'Math'


|  Year  | Approaches | Mts Std | Masters |Combined | Failing |
| :----: | :--------: | :-----: | :-----: |:------: |:------: |
|  2016  |       31%  |  29%    |  24%    | 84%     |   16%   |
|  2017  |       27%  |  31%    |  30%    | 88%     |   12%   |
|  2018  |       25%  |  29%    |  33%    | 87%     |   13%   |
|  2020  |       29%  |  27%    |  23%    | 79%     |   21%   |
|  2021  |       30%  |  27%    |  21%    | 78%     |   22%   |
|  2022  |       31%  |  31%    |  18%    | 80%     |   20%   |
: Subject = Math, with Proportions Broken Into Constituent Parts.


An amazing amount of very useful information is now available to us using just this small data frame.

<br>

\bigskip

**FOOLED BY RANDOMNESS - AN EXTENDED EXAMPLE**

\medskip

When looking at the results in the table it would be difficult ***NOT*** to feel something about several categories, particularly the changes observed in the 'Masters Standard' and the 'Failing' columns.  They seem large; and negative.


Like everyone else, I wanted some numerical context so I put the data in the form of bar charts by year:

<br>

\medskip







<br>

\medskip


However, I know from training and long experience that it is dangerous to rely solely on visual inspection of data that is simply displayed and not analyzed.


The analysis tells us a very different story.

<br>

\medskip







<br>

\medskip


And, here's the one TEA does not provide at all that school boards may been keenly interested in:
<br>

\medskip






<br>

\bigskip

These additional analytic reports (PBCs) were created using the disagreggated data and contain the necessary information to help us.  Again, they cover public STAAR data provided by TEA, along with a brief interpretation of the charts taken as a whole.  They provide a baseline (context) for evaluating both past and future performance in these additional categories and levels.

<br>

\medskip








INTERPRETING THE CHARTS  


\bigskip

* The measuremenets do go up and down, but ***there is no evidence that the movements are more than random variation***.  The ups and downs are due to the many random forces acting on the cause system that produced the results.  All display ***common cause variation*** because the forces creatomg the ups and downs are common to all the results we see.


* In this case, the charts show that all measurements fall between the calculated Upper Limit (UCL) and Lower Limit (LCL), with no statistical trends identified.  Accordingly, the processes are ***stable***, with a ***predictable capability***.  Of the many forces influencing the results, no one of them is predominant.  If one force (or a small combination) was predominate the chart would reveal it.


* If the process remains fundamentally the same, ***the proportion of students in the district taking the STAAR exam in Math that reach the level of 'Meets Grade Level Standard, Masters Grade Level Standard, or Failed to Reach Approaches Grade Level Standard' will continue to fluctuate between their respective upper and lower control limits (UCL and LCL).  Their averages are the best estimated of performance in the future.***.  


* Any expectation of results outside those limits, without a significant change to the system, ***would not be justified - at all***.  


* Any future result, if it falls inside the calculated boundaries ***does not signify an increase or decrease in the performance of the process.*** The routine 'ups' or 'downs' do not mean we are doing better, or worse.


* Confidence in the interpretation will **increase** as you add more data to the chart.  For example, it would be helpful to add years prior to 2016 to see if our interpretation of the data changed.


* This charts contain all the information this data can reveal.  ***If you need or want more information you have to collect more data***.

<br>

\bigskip





<br>

\vspace{0.5in}

**LEADERSHIP REACTION**

\medskip

The content of your reports matter.  The appropriate reaction of management (which includes the school board) is ***completely different*** if the system or process indicates a ***stable state*** (predictable) than when it shows evidence of being in an ***unstable state*** (statistically speaking, of course). 


Changing a stable process in reaction to so-called performance indicators (KPIs) that fall within the 'normal' range of a predictable process is ***harmful.***  It makes things ***worse***; no matter how emotional you may become if you think you see things 'going in the wrong direction.'


Reacting to indicators falling outside the identified 'normal' range is ***productive***.  If the indicator is in the 'good' direction efforts to identify the causes and duplicate them are almost always successful.  If they fall in the 'bad' direction, efforts to identify the causes and remove them are worthwhile.


***If your reports are 'description-only' you cannot possibly determine the best, most appropriate action for the circumstances.***  


All data I've seen so far as a board member are 'descriptive only', with no analysis present.  The most important step, analysis, is missing.
<br>
<br>

\bigskip

<br>

\bigskip


**IN SUMMARY**


To go from monitoring the system to improving the system we must move from a 'snapshot' point of view to an 'analysis' point of view.  ***There is no in-between.***  That means the data we seek must include the context of time.  All improvement work requires time-period-by-time-period data.  


The crucial information for analysis of district capability (and the prediction of future performance) is contained in the order of occurrence found in the time-period-by-time-period data.  ***The more periods included in the analysis, the stronger the evidence for your inferences from the charts.***  


Humans naturally seek context.  That is where notions such as 'this month vs last month vs YTD vs a year ago this month' arose.  Those are completely insufficient for analysis, but they soothe our need for context of some sort.



Statistical theory in enumerative studies is used to describe the precision of estimates and the validity of hypotheses for the population studied. In analytical studies, the standard error of a statistic does not address the most important source of uncertainty, namely, the change in study conditions in the future. 


Deming's philosophy is that management should be analytic instead of enumerative. In other words, management should focus on improvement of processes for the future instead of on judgment of current results. 



