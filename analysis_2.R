library(tidyverse)
library(readxl)
library(dplyr)

# Load your datasets
ev_data <- read_csv("data/EVDataExplorer2025.xlsx - GEVO_EV_2025.csv")
policy_data <- read_csv("data/Global EV Policy Explorer - Sheet1.csv")

# Quick look
colnames(ev_data)
colnames(policy_data)

unique(ev_data$parameter)
unique(ev_data$mode)


ev_data <- filter(ev_data, category == "Historical")

global_ev_data <- filter(ev_data, region_country =="World")

#separating out the charging stations data
charging_stations <- filter(global_ev_data, parameter=="EV charging points") %>%
  group_by(region_country, category, parameter, mode, year, unit, `Aggregate group`) %>%
  summarise(value = sum(value), .groups = "drop") %>% 
  rename(charging_stations = value)


ev_stock <- filter(global_ev_data, parameter=="EV stock") %>%
  group_by(region_country, category, parameter, year, unit, `Aggregate group`) %>%
  summarise(value = sum(value), .groups = "drop") %>%
  rename(total_stock = value)


combined <- ev_stock %>%
  select(-parameter, -unit) %>%
  full_join(
    charging_stations %>% select(-parameter, -unit, -mode),
    by = c("region_country", "category", "year", "Aggregate group")
  )

combined <- combined %>%
  select(year, total_stock, charging_stations) %>%
  mutate(ev_per_station = total_stock/charging_stations)


ggplot(combined, aes(x = year, y = ev_per_station)) +
  geom_line() +
  geom_point() +
  geom_text(aes(label = round(ev_per_station, 1)), vjust = -0.5) +
  scale_x_continuous(breaks = seq(min(combined$year), max(combined$year), by = 2)) +
  labs(
    title = "EV Stock per Charging Station Over Time",
    x = "Year",
    y = "EVs per Charging Station"
  ) +
  theme_bw()

