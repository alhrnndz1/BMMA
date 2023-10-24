# BMMA
# Description:
This repository contains code and datasets used in the meta-analysis of global participation in biomaterials journals. The project aims to analyze participation trends, highlight key contributions, and offer insights into global representation in the field both in co-authorship networks and editorial boards.
References:
Fournier, A. M. V., Boone, M. E., Stevens, F. R., & Bruna, E. M. (2022). refsplitr script. Retrieved from https://docs.ropensci.org/refsplitr/articles/refsplitr.html.

# Features:
**Data Extraction:** Using the refsplitr package to read references and extract author details.  
**Data Cleaning:** Procedures to clean and refine author names and affiliations.  
**Geolocation:** Implementing ggmap and rworldmap to georeference author affiliations.  

# Dependencies:
**Essential R packages:** refsplitr, rlang, ggplot2, ggmap, rworldmap, igraph, janitor, and RColorBrewer.  
**Google Maps API Key:** Necessary for geolocation functions in ggmap. (TBD)

# Directory Structure:
Root folder containing the main analysis script.  
/blue/anaporras/a.hernandez4/: Directory containing datasets (WoS_Results_2 and individual journals) and outputs of the analysis.

# Usage:
Ensure all dependencies are installed.  
Set the working directory to /blue/anaporras
Run the script to perform data extraction, cleaning, and geolocation.  
Results are saved in specific directories as outlined in the script.

# Contribution:
This analysis provides an in-depth review of global contributions in the field of biomaterials research, showcasing the significant need for diversity in scientific participation and offering a consolidated dataset for researchers and editorial boards.
