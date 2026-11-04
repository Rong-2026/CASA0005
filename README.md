# week4 – Global Gender Inequality Analysis

## Project Overview
This project analyses changes in the Gender Inequality Index (GII) across countries between 2010 and 2019 using R and spatial data visualisation.

## Data Sources
- **GII Data:** UNDP Human Development Reports
- **World Boundaries:** Natural Earth

## Methodology
1. Imported and cleaned GII data using R.
2. Calculated GII changes (2019 minus 2010).
3. Joined GII data with world spatial data using ISO3 country codes.
4. Visualised global changes using `ggplot2` and `sf`.

## Results and Interpretation
The analysis identified 154 geographical features with valid GII change values. Several countries, including Afghanistan, Albania and Armenia, showed decreases in GII between 2010 and 2019.

The map highlights spatial differences in gender inequality changes. Blue indicates decreasing inequality, red indicates increasing inequality, and grey represents missing data.

## Limitations
Some countries have missing data, and differences in country codes may affect spatial matching. The analysis compares only two years and does not explain the causes of GII changes.

## Outputs
- `gender_inequality_analysis.R` – R analysis code
- `world_gii.geojson` – Spatial dataset
- `GII_change_map.png` – Global GII change map

## Conclusion
This project demonstrates how R and spatial analysis can be used to explore geographical differences in gender inequality changes.
