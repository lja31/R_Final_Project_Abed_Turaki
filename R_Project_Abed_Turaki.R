---
  title: "Project"
author: "Laila"
date: "2024-11-11"
output: pdf_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)
library(sf)
library(here)
library(mapview) ; mapviewOptions(fgb = FALSE)
library(dplyr)
library(ggplot2)

here()
dataset <- read_csv(here("Data/project/population_sheet_updated.csv"))
colnames(dataset)

data_long <- dataset %>%
  pivot_longer(
    col='1984':'2023',
    names_to = "Year",
    values_to = "Value"
  )
#data_transposed <- data_long %>%
#  pivot_wider(names_from = "Year",  
#    values_from = "Value")

dataset2 <- pivot_wider(data_long, names_from = 'Indicator_Name', values_from ='Value')  

#write.csv(dataset2, row.names = FALSE, file.path("/home/guest/EDE_Fall2024/Data/project/dataset2.csv"))


```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:
  
  ```{r}

```

## Including Plots

You can also embed plots, for example:
  
  ```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
