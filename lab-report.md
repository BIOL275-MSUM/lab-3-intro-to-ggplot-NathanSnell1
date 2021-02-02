Lab 3 Report
================
Nathan Snell
2021-02-02

Instructions for this lab report can be found on [Your assignment
section of Lab Assignment 3 Introduction to
ggplot2](https://biol275-msum.github.io/introduction-to-ggplot2.html#your-assignment)
on the lab website.

## Fireflies

> A. Insert an R code chunk and create a graph depicting the frequency
> distribution of the 35 mass measurements. It should have legible text
> and appropriate axis labels.

ggplot(data = Fireflies\_data) + geom\_histogram(mapping = aes(x =
spermatophoreMass), binwidth = .008, fill = “\#C5351B”, color = “black”)
+ labs(x = “Spermatophore Mass”, y = “Frequency (number of males)”) +
scale\_y\_continuous(breaks = seq(0, 7.5, 2.5), limits = c(0, 7.5))+
scale\_x\_continuous(breaks = seq(0, 0.15, .03)) + theme\_classic() +
theme( axis.title = element\_text(face = “bold”))

> B. What type of graph did you choose in part (A)? Why?

I chose a histogram because the firefly data was a distribution of a
single numerical variable.

> C. Describe the shape of the frequency distribution. What are its main
> features?

The shape of the frequency distribution looks like that of a bell curve.
This means the highest number of males producing a particular
spermatophore mass is in the middle. As the curve exits the middle, it
falls lower and lower on both sides.

> D. What term would be used to describe the largest measurement in the
> frequency distribution? You can refer to the lecture slides, your
> notes, or the textbook.

The term to describe the largest measurement in the frequency
distribution is the mode.

## Bird orders

I read the data using the code provided by the instructor. The dataset
is from the auk package and was originally named ebird\_taxonomy. I
converted it to a tibble, removed non-species taxa, and named the new
dataset birds.

> E. How many bird species are in the new birds dataset? How did you
> find out?

There are 10,721 species in the dataset. I found this out by making the
table and looking at the number of observations. Since each observation
is a species, then the number of observations is the number of species.

> H. How many orders are there? You can get this right by counting on
> the graph, but you will only get full points if you use some code to
> figure it out.

There are 41 orders in this data set. Running the distinct function of
the birds data and specifying the order gives you a tibble of the number
of orders there are. The code used is provided below.

distinct(birds, order)

> F. Insert an R code chunk and create a graph depicting the
> distribution of orders in the birds dataset. Sort the orders with the
> most frequent on the left. It should have legible text and appropriate
> axis labels.

ggplot(birds)+ geom\_bar(mapping = aes(x =fct\_infreq(order)))+ labs(x
=“Order”, y =“Frequency (Number of Species)”)+ scale\_y\_log10()+  
theme( axis.text = element\_text(color = “black”), axis.text.x =
element\_text(angle = 60, hjust = 1))

> G. What kind of graph did you create? Why?

I created a bar graph because we wanted to show and order a single
categorical set of data.

## Links to peer review

I reviewed Tyler Edvall’s lab report at this URL:

<https://github.com/BIOL275-MSUM/lab-3-intro-to-ggplot-tdedvall/blob/9cd5211526b0caa957b93f8d82f3b7d8b71ea373/README.md>

Johnathan Kanyinda reviewed my lab report at this URL:

<https://github.com/BIOL275-MSUM/lab-3-intro-to-ggplot-NathanSnell1>

## Session Info

Here is my session information:

``` r
sessioninfo::session_info()
```

    ## ─ Session info ───────────────────────────────────────────────────────────────
    ##  setting  value                       
    ##  version  R version 4.0.3 (2020-10-10)
    ##  os       macOS Mojave 10.14.6        
    ##  system   x86_64, darwin17.0          
    ##  ui       X11                         
    ##  language (EN)                        
    ##  collate  en_US.UTF-8                 
    ##  ctype    en_US.UTF-8                 
    ##  tz       America/Chicago             
    ##  date     2021-02-02                  
    ## 
    ## ─ Packages ───────────────────────────────────────────────────────────────────
    ##  package     * version date       lib source        
    ##  assertthat    0.2.1   2019-03-21 [1] CRAN (R 4.0.2)
    ##  cli           2.1.0   2020-10-12 [1] CRAN (R 4.0.2)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 4.0.2)
    ##  digest        0.6.27  2020-10-24 [1] CRAN (R 4.0.2)
    ##  evaluate      0.14    2019-05-28 [1] CRAN (R 4.0.1)
    ##  fansi         0.4.1   2020-01-08 [1] CRAN (R 4.0.2)
    ##  glue          1.4.2   2020-08-27 [1] CRAN (R 4.0.2)
    ##  htmltools     0.5.0   2020-06-16 [1] CRAN (R 4.0.2)
    ##  knitr         1.30    2020-09-22 [1] CRAN (R 4.0.2)
    ##  magrittr      1.5     2014-11-22 [1] CRAN (R 4.0.2)
    ##  rlang         0.4.10  2020-12-30 [1] CRAN (R 4.0.2)
    ##  rmarkdown     2.6     2020-12-14 [1] CRAN (R 4.0.2)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 4.0.2)
    ##  stringi       1.5.3   2020-09-09 [1] CRAN (R 4.0.2)
    ##  stringr       1.4.0   2019-02-10 [1] CRAN (R 4.0.2)
    ##  withr         2.3.0   2020-09-22 [1] CRAN (R 4.0.2)
    ##  xfun          0.18    2020-09-29 [1] CRAN (R 4.0.2)
    ##  yaml          2.2.1   2020-02-01 [1] CRAN (R 4.0.2)
    ## 
    ## [1] /Library/Frameworks/R.framework/Versions/4.0/Resources/library
