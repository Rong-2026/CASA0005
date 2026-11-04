# Week 1 – Employment Mapping in New Zealand

## Project Overview
This project uses QGIS to analyse and visualise the spatial distribution of paid employees across New Zealand's territorial authorities.

## Data and Methods
- **Software:** QGIS
- **Data:** New Zealand territorial authority boundaries (2018) and employment statistics from the 2018 New Zealand Census.
- **Methods:** Data preparation, attribute joining and choropleth mapping.

## Outputs
- A thematic map showing geographical variations in the number of paid employees.
- A QGIS project containing the spatial analysis and visualisation.

## Map Interpretation
The choropleth map illustrates geographical differences in the number of paid employees across New Zealand's territorial authorities. Different colours represent different ranges of employment counts.

## Limitations
The analysis uses aggregated employment data at the territorial authority level. Differences in population size may affect comparisons, and the map does not directly represent employment rates.

## Data Attribution

**1. Geographical Boundary Data**
- **Provider:** Stats NZ (Statistics New Zealand).
- **Dataset:** Territorial Authority 2018 (Generalised).
- **Source:** New Zealand Spatial Data Portal.
- **Dataset URL:** https://datafinder.stats.govt.nz/layer/92214-territorial-authority-2018-generalised/
- **Licence:** Creative Commons Attribution 4.0 International (CC BY 4.0).
- **Description:** Generalised territorial authority boundaries used for spatial mapping.

**2. Employment Data**
- **Provider:** Stats NZ (Statistics New Zealand).
- **Dataset:** 2018 Census – Statistical Area 1 Dataset.
- **Source:** Stats NZ, 2018 Census.
- **Original file:** `2018-SA1-dataset-individual-part-3a-total-NZ_updated_16-7-20`
- **Worksheet:** Territorial Authority.
- **Variable:** Paid employee.
- **Processed file:** `employment.csv`
- **Description:** Census employment statistics extracted and prepared for joining with territorial authority boundaries in QGIS.
