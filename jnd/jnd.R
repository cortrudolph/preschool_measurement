library(tidyverse)

data<-tibble::tribble(
  ~Distance, ~Sensation,
         0L,         1L,
        10L,         1L,
        20L,         1L,
        30L,         1L,
        40L,         1L,
        50L,         1L,
        60L,         1L,
        70L,         1L,
        80L,         1L,
        90L,         1L,
       100L,         1L,
       110L,         1L,
       120L,         2L
  )

data %>% ggplot(., aes(x=Distance, y=Sensation)) +
  geom_line() +
  labs(x="Distance (mm)", y = "Sensation (1 or 2)", title = "Just Noticable Difference")+
  scale_y_continuous(breaks = c(1,2))

