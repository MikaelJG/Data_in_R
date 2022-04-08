---
title: "Data with R"
date: 2022-04-01T23:29:21+05:30
draft: false
github_link: "https://github.com/MikaelJG/"
author: "Mikael J. Gonsalves"
bg_image: ""
description: ""
toc: 
---

## Data Analysis

In contrast to spreadsheets softwares like Tableau, R requires you to write R code.

Rstudio is an editing program to ease coding; it is an integrated development environment (IDE). For instance, in Rstudio, access a function's documentation (?function_name)

## Classes

In R, data in objects are given a class. The class function will tell you which one (class(fruits)).

Logical vectors: True/false value
Numeric vectors: Numbers
Character vectors: Strings
Factors vectors: character vector with an assigned order, called levels.

## Functions

Often, in coding, ressources are abundant. In R, in the vast majority of cases, there is no need to write functions. Great code already exists, simply use available packages. 
The tidyverse is phenomenal.

## Importing data in Rstudio

The easiest kind of data to visualize is rectangular data (rows and columns). Camma separeted values file (.CSV) is a common rectangular dataset.

For surveys, you will need a codebook. Codebooks explain the answers' numberic values in your .csv file. (Do you consent? 1= yes/ 2=No).

   | Name  | Consent |
   | ----- | --- |
   | Bob   | 1  |
   | Alice | 2  |
   | Sarah   | 1  |
   | Derek | 1  |

Clear documentation is essential to data wrangling! It's good practice in data science. 

## Base R visualization

In R, you can plot values of a single variables (or a single vector). Histagrams (bar frequency chart) are the best example.
Of course, you can plot values of two or more variables in relation to each other. 

point charts..?

## Wrangling Functions

Before wrangling data, decide on blank cells in your dataset. Be careful, you may have a lot of them.
The easiest, but not necessarely best, is droping rows with blanks: drop_na(). I highly recommend Dplyr for cleaning data.
(https://dplyr.tidyverse.org/reference/index.html#section-one-table-verbs, https://dplyr.tidyverse.org/reference/index.html#section-two-table-verbs)

When wrangling, consider these:

> create smaller datasets with prefered sections (filter). 
Filter(datasource,column==number)/ filter(_dataset,gender==2 & pol>4)
> Rename datasets columns (rename) 
function (dataset,new_column_name=old_name)
> Quick tables and rows' orders change (arrange)
sorted_by_gender_and_salary <- database %>% arrange(gender,salary)
> Group: changes how tibbles interact with other function in tidyverse.  Very useful with other functions
grouped_gender_pid7 <- cces %>% group_by(gender,pid7)
> Reduce multiple values to one (summarize). Great in conjunction with group function 
> Generate summary statistics of columns: means, medians, standard deviations, etc.(group_by). 
summarise(grouped_data, 'Mean Religion' = mean(religion_column))
> create a frequency table
table(filtered_dat$investor)
> Recode variables in column (e,g. change numeric value) (recode)
> select certain columns from the data
select(republican_women,"educ","employ")
> qplot(x=pid7, data=dat, geom="histogram",ylab="Count",xlab="Seven-Point Party ID")

> recode variables recode
(dat$CC18_325d,'1'=1, '2'=0)

####rename variables
test <- rename(cces,trump_approval=CC18_308a)

## Modify dataframes

The following HTML `<h1>`—`<h6>` elements represent six levels of section headings. `<h1>` is the highest section level while `<h6>` is the lowest.

## Ggplot2

In qplot, specify x and y aesthetics. (what data to map in axes)
 see lecture’s table-and figure-markdown. RMD

Then, tell qplot what figure you want to draw. Called “Geometries”. Basic: histogram, density, boxplot, point and line. 

See university of california business analytics R programming guide. & also https://ggplot2.tidyverse.org/reference/qplot.html

## Conclusion

I once heard a great advice on softwares such as R: "Don't try to learn everything. Focus on what you need". It is perhaps the best advice I can give you as well: "Go in with a plan"! Moreover, rest assured some walked the path before you. Somewhere online, find their notes, and you will be alright. 

Good luck.


## Blockquotes

The blockquote element represents content that is quoted from another source, optionally with a citation which must be within a `footer` or `cite` element, and optionally with in-line changes such as annotations and abbreviations.

#### Blockquote without attribution

> Tiam, ad mint andaepu dandae nostion secatur sequo quae.
> **Note** that you can use *Markdown syntax* within a blockquote.

#### Blockquote with attribution

> Don't communicate by sharing memory, share memory by communicating.</p>
> — <cite>Rob Pike[^1]</cite>

[^1]: The above quote is excerpted from Rob Pike's [talk](https://www.youtube.com/watch?v=PAAkCSZUG1c) during Gopherfest, November 18, 2015.

## Tables

Tables aren't part of the core Markdown spec, but Hugo supports supports them out-of-the-box.

   | Name  | Age |
   | ----- | --- |
   | Bob   | 27  |
   | Alice | 23  |

#### Inline Markdown within tables

| Inline&nbsp;&nbsp;&nbsp; | Markdown&nbsp;&nbsp;&nbsp; | In&nbsp;&nbsp;&nbsp;                | Table  |
| ------------------------ | -------------------------- | ----------------------------------- | ------ |
| *italics*                | **bold**                   | ~~strikethrough~~&nbsp;&nbsp;&nbsp; | `code` |

## Code Blocks

#### Code block with backticks

``` html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Example HTML5 Document</title>
</head>
<body>
  <p>Test</p>
</body>
</html>
```
#### Code block indented with four spaces

    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <title>Example HTML5 Document</title>
    </head>
    <body>
      <p>Test</p>
    </body>
    </html>

#### Code block with Hugo's internal highlight shortcode
{{< highlight html >}}
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Example HTML5 Document</title>
</head>
<body>
  <p>Test</p>
</body>
</html>
{{< /highlight >}}

## List Types

#### Ordered List

1. First item
2. Second item
3. Third item

#### Unordered List

* List item
* Another item
* And another item

#### Nested list

* Item
1. First Sub-item
2. Second Sub-item

## Other Elements — abbr, sub, sup, kbd, mark

<abbr title="Graphics Interchange Format">GIF</abbr> is a bitmap image format.

H<sub>2</sub>O

X<sup>n</sup> + Y<sup>n</sup> = Z<sup>n</sup>

Press <kbd><kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>Delete</kbd></kbd> to end the session.

Most <mark>salamanders</mark> are nocturnal, and hunt for insects, worms, and other small creatures.
