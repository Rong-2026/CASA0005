library(tidyverse)
library(readxl)
library(countrycode)
library(sf)
library(rnaturalearth)
list.files()
gii <- read_excel("hdr-data.xlsx")
View(gii)
names(gii)
head(gii)
str(gii)
gii_filtered <- gii %>%
  filter(
    indicatorCode == "gii",
    year %in% c("2010", "2019")
  ) %>%
  mutate(
    actualValue = as.numeric(actualValue)
  )
View(gii_filtered)
gii_wide <- gii_filtered %>%
  select(countryIsoCode, country, year, actualValue) %>%
  pivot_wider(
    names_from = year,
    values_from = actualValue,
    names_prefix = "GII_"
  )
View(gii_wide)
gii_wide <- gii_wide %>%
  mutate(
    GII_change = GII_2019 - GII_2010
  )
View(gii_wide)
names(gii_wide)
head(gii_wide)
world <- ne_countries(
  scale = "medium",
  returnclass = "sf"
)
head(world)
names(world)
plot(st_geometry(world))
world_gii <- world %>%
  left_join(
    gii_wide,
    by = c("adm0_a3" = "countryIsoCode")
  )
names(world_gii)
head(
  world_gii %>%
    st_drop_geometry() %>%
    select(name, GII_2010, GII_2019,GII_change)
)
sum(!is.na(world_gii$GII_change))
sum(is.na(world_gii$GII_change))
gii_map <- ggplot(world_gii) +
  geom_sf(
    aes(fill = GII_change),
    color = "grey50",
    linewidth = 0.1
  ) +
  scale_fill_gradient2(
    low = "blue",
    mid = "white",
    high = "red",
    midpoint = 0,
    na.value = "grey85",
    name = "GII Change"
  ) +
  labs(
    title = "Global Gender Inequality Change",
    subtitle = "2010–2019",
    caption = "Source: UNDP Human Development Reports"
  ) +
  theme_minimal()

print(gii_map)
ggsave(
  filename = "GII_change_map.png",
  plot = gii_map,
  width = 12,
  height = 7,
  dpi = 300
)
list.files()
st_write(
  world_gii,
  "world_gii.geojson",
  delete_dsn = TRUE
)
list.files()