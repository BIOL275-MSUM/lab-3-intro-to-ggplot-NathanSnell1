
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

## Inserting Data
library(auk)                          # load the auk package
birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
  as_tibble() %>%                     # tibbles print better in the console
  filter(category == "species")       # remove non-species taxa

## Plotting Data

distinct(birds, order)

## Final Graph

ggplot(birds)+
  geom_bar(mapping = aes(x =fct_infreq(order)))+ 
  labs(x ="Order", y ="Frequency (Number of Species)")+
  scale_y_log10()+  
  theme(
    axis.text = element_text(color = "black"),
    axis.text.x = element_text(angle =60, hjust = 1)
  )

