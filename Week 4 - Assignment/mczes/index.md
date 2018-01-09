--- 
title       : Course Project - Shiny Application and Reproducible Pitch
subtitle    : Employment by Qualification Degree in Germany
author      : mczes 
job         : January 7th 2018
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 

<style>
.title-slide {
  background-color: #fff;
}
</style>

## Overview

This Slidify presentation was built as peer-graded assignment for the Coursera & John Hopkins University course 
Developing Data Products.

* The Shiny application developed for the fist part of the assignment is available at:
* https://mczes.shinyapps.io/week_4_-_assignment/

* Source code for ui.R and server.R files are available on my Github repository: 
* https://github.com/mczes/mczes.github.io/tree/master/Week%204%20-%20Assignment

--- .class #backgroundStart

## Data Product Idea & Functionality

The idea of my Shiny app is calculating the year-wise comparison of employment by qualification degree in Germany from 1993 to 2016.

### How to use

Please choose the base year and the year to compare with from the select boxes of the Shiny application.

### The result

The result shows the employment in thousands by qualification degree and in comparison by the chosen years.

--- .class #id

##  Dataset Summary

The data used in the app comes from the www.datenportal.bmbf.de/portal/Tabelle-0.28.html dataset.

In the following you will find a summary of the dataset as embedded R code:


```
##  Year.vocational.training.total.university.degree.without.vocational.training
##  1993;24427;4691;5235: 1                                                     
##  1994;24396;4837;5074: 1                                                     
##  1995;24342;4981;4897: 1                                                     
##  1996;24036;5329;4742: 1                                                     
##  1997;24037;5477;4428: 1                                                     
##  1998;23969;5598;4393: 1                                                     
##  (Other)             :18
```

--- .class #id 

## Interactive Data Product Demo

<iframe src="https://mczes.shinyapps.io/week_4_-_assignment/" style="height: 450px" scrolling="no" /></iframe>


