library(tidyverse)

data<-tibble::tribble(
  ~Goldfish, ~Length,
         1L,   19.97,
         2L,   19.91,
         3L,   20.44,
         4L,   20.52,
         5L,   21.15,
         6L,   20.17,
         7L,    20.8,
         8L,   21.24,
         9L,   20.39,
        10L,   21.32,
        11L,   20.43,
        12L,   20.58,
        13L,   20.39,
        14L,   20.82,
        15L,   21.23,
        16L,   20.88,
        17L,   20.61,
        18L,   20.58,
        19L,   20.88,
        20L,    20.8,
        21L,   21.41,
        22L,   20.82,
        23L,   20.21,
        24L,   20.91,
        25L,   20.34
  )


psych::describe(data$Length)

data %>% ggplot(., aes(y=Length)) +
  geom_boxplot(notch = TRUE) +
  xlab("Goldfish") +
  scale_x_discrete(limits=c()) 


