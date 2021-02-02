
## Death From Tigers

tiger_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02e2aDeathsFromTigers.csv")
#> 
#> ── Column specification ────────────────────────────────────────────────────────
#> cols(
#>   person = col_double(),
#>   activity = col_character()
#> )

tiger_data 

## List of categorical information

distinct(tiger_data, activity)

count(tiger_data, activity)

ggplot(data = tiger_data)

ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = activity))

ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = fct_infreq(activity)))

ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = fct_infreq(activity)), fill = "#C5351B")

ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = fct_infreq(activity)), fill = "#C5351B") +
  labs(x = "Activity", y = "Frequency (number of people)")

ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = fct_infreq(activity)), fill = "#C5351B", 
           width = .8) +
  labs(x = "Activity", y = "Frequency (number of people)") +
  scale_y_continuous(limits = c(0, 50), expand = expansion(mult = 0)) +
  theme_classic(base_size = 12) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.ticks.x = element_blank()
  )

## Bird Abundancies

bird_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02e2bDesertBirdAbundance.csv")
#> 
#> ── Column specification ────────────────────────────────────────────────────────
#> cols(
#>   species = col_character(),
#>   abundance = col_double()
#> )

bird_data                  # print the data in the console


ggplot(data = bird_data)

ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance))
#> `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance), binwidth = 50)

ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance), binwidth = 50,
                 boundary = 0, closed = "left")

ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance), binwidth = 50,
                 boundary = 0, closed = "left")

ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance), binwidth = 50,
                 boundary = 0, closed = "left", 
                 fill = "#C5351B", color = "black") +
  labs(x = "Abundance", y = "Frequency (number of species)") +
  scale_y_continuous(breaks = seq(0, 30, 5), limits = c(0, 30), 
                     expand = expansion(mult = 0)) +
  scale_x_continuous(breaks = seq(0, 600, 100)) +
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1))
  )

## Fireflies

Fireflies_data<- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")
#> 
#> ── Column specification ────────────────────────────────────────────────────────
#> cols(
#>   Spermatophore mass = col_character(),
#>   males = col_double()
#> )
  
## Fireflies

library(tidyverse)

## Inserting Data

Fireflies_data<- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")

## Plotting Data

ggplot(data = Fireflies_data) #blank
ggplot(data = Fireflies_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = .005) #original graph

## Final Graph

ggplot(data = Fireflies_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = .008,
                 fill = "#C5351B", color = "black") +
  labs(x = "Spermatophore Mass", y = "Frequency (number of males)") +
  scale_y_continuous(breaks = seq(0, 7.5, 2.5), limits = c(0, 7.5))+ 
  scale_x_continuous(breaks = seq(0, 0.15, .03)) +
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"))

## Birds
library(auk)                          # load the auk package
birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
  as_tibble() %>%                     # tibbles print better in the console
  filter(category == "species")       # remove non-species taxa
distinct(birds)

distinct(birds, order)

ggplot(birds)

ggplot(birds)+
  geom_bar(mapping = aes(x =fct_infreq(order)))+ 
  labs(x ="Order", y ="Frequency (Number of Species)")+
  scale_y_log10()+  
  theme(
    axis.text = element_text(color = "black"),
    axis.text.x = element_text(angle =60, hjust = 1)
  )
           