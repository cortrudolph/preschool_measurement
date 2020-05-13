library(tidyverse)

data<-tibble::tribble(
  ~Time, ~Temperature,
      0,         56.3,
    0.5,          114,
      1,          123,
    1.5,          137,
      2,          169,
    2.5,          164,
      3,          147,
    3.5,          158,
      4,          160,
    4.5,          157,
      5,          171
  )

data %>% ggplot(., aes(x=Time, y=Temperature)) +
  geom_point(size=5) +
  stat_smooth(method = "lm", formula = y ~ x + I(x^2), size = 5)

