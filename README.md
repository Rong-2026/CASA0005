## week1 - Data Attribution

Geographical boundary data: Stats NZ, licensed under Creative Commons Attribution 4.0 International (CC BY 4.0).

Source: Stats NZ – Territorial Authority 2018 Generalised Boundaries.

Licence: https://creativecommons.org/licenses/by/4.0/

The geographical data are used for educational purposes and have been combined with employment data for spatial analysis.
# Week 2 – Washington Science Assessment Mapping

## Project Overview
This project uses QGIS to analyse and visualise geographical differences in science assessment results across Washington State counties.

## Data and Methods
- **Software:** QGIS
- **Data:** Washington county boundaries and school science assessment data (2018–2019).
- **Methods:** Data joining, spatial aggregation and choropleth mapping.

## Outputs
- A thematic map showing spatial variations in science assessment results.
- Processed spatial datasets saved in GeoPackage format.

## Map Interpretation
The choropleth map illustrates geographical differences in science assessment results across Washington State counties. Different colours represent different value ranges, highlighting spatial variations in educational outcomes.

## Limitations
The analysis uses historical data from 2018–2019. County-level aggregation may hide differences between individual schools and smaller geographical areas.

## Data Attribution
The project uses Washington county boundary data and school assessment data. Original data sources and licensing information should be verified and acknowledged before public redistribution.
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
