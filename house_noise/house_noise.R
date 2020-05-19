library(ggstatsplot)

data<-tibble::tribble(
     ~Location,               ~Room, ~dBa,
    "Basement",         "Work_Room", 37.8,
    "Basement",     "Electric_Room",   35,
    "Basement",     "Basement_Main", 40.3,
    "Basement",           "Laundry", 36.2,
    "Basement", "Basement_Bathroom", 38.3,
    "Basement",      "Furnace_Room", 53.6,
    "Basement",       "Basement_TV", 35.4,
    "Basement",    "Basemement_Bar", 45.6,
  "Main_Floor",       "Living_Room", 33.9,
  "Main_Floor",           "Kitchen", 41.2,
  "Main_Floor",    "Guest_Bathroom", 39.2,
  "Main_Floor",            "Office", 46.8,
  "Main_Floor",     "Guest_Bedroom", 34.8,
  "Main_Floor",     "Grier_Bedroom", 38.3,
  "Main_Floor",    "MomDad_Bedroom", 37.2,
  "Main_Floor",   "ModDad_Bathroom", 34.7,
  "Main_Floor",               "Den", 34.3
  )


# parametric t-test and box plot
p1 <-
  ggstatsplot::ggbetweenstats(
    data = data,
    x = Location,
    y = dBa)
