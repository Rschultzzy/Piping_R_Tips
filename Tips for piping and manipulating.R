library(tidyverse) #Load relevant package

glimpse(table2) #1

view(table2) #2

table2 |> arrange(year, type) #3

table1 |> select(country, population) #4
table1 |> select(-cases, -year)

table1 |> filter(year == 2000) #5
 

table1 |> #6
  mutate(fill_it = "with a smile :)") |>
  mutate(popul_per_case = population / cases)

table1 |> #7
  mutate(fill_it = "with a smile :)") |>
  rename(much_better_name = fill_it)

table1 |> #8
  group_by(year) |>
  summarise(avr_popul = mean(population),
            all_cases = sum(cases),
            how_many = n())

# * if you shift+8 in R comment you make a cool little 5 point star