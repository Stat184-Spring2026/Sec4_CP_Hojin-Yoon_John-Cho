# Global Electric Vehicle Adoption

This project analyzes global electric vehicle adoption trends using exploratory data analysis in R. The report investigates EV sales, EV stock, charging infrastructure growth, and EV-related policy activity from the early 2010s through 2025.

## Overview

We look at data from the early 2010s to 2025 to see how trends have changed in EV adoption. The main metrics we compared were Electric vehicle sales per year, electric vehicle stock/public charging station, and electric vehicle legislation per year. The goal is to see how trends are shifting for consumers in the global automotive industry since the growth of the electric vehicle market.

## Methods and Paradigms

This project follows an Exploratory Data Analysis (EDA) paradigm because the goal is to investigate trends and relationships in electric vehicle adoption data before making formal conclusions. 

The coding workflow uses the Tidyverse paradigm in R because its pipe-based syntax improves readability, organization, and reproducibility during data cleaning, transformation, and visualization.

### Interesting Insight

![EV Stock vs Policies](figures/ev-stock-vs-chargin-stations.jpeg)
The graph shows how the ratio of total number of Electric Vehicles to charging stations changes over this period of 14 years. We can clearly see when electric vehicles became wildly popular around 2012-2014 as the vehicle/charger ratio shoots up really high. Observing the rest of the graph we see how investment is made in charger infrastructure, as the ratio steadily decreases. 

## Data Sources and Acknowledgements

Our primary datasets come from the International Energy Agency (IEA) Global EV Data Explorer and Global EV Policy Explorer. These datasets include information about electric vehicle sales, EV stock, charging infrastructure, and EV-related legislation across multiple countries and years.

The IEA is an intergovernmental organization focused on energy policy and sustainability research. Their publicly available datasets support transparency and reproducibility in EV-related research.

We also acknowledge the use of the Tidyverse ecosystem in R for data wrangling and visualization.

## Reproducibility

The project was developed using Quarto and R. All datasets required to reproduce the analysis are included in the `data/` folder, and the final report can be rendered directly from `final-report.qmd`.

Required R packages include:
- tidyverse
- readxl
- knitr
- scales

To reproduce the report:

1. Clone the repository
2. Open the `.Rproj` file in RStudio
3. Render `final-report.qmd`

## Repo Structure

```text
project/
├── appendix/                 # PCIP plan, GenAI usage documentation, and contribution breakdown
├── data/                     # Raw datasets used throughout the analysis
├── figures/                  # Exported visualizations and images used in the README and report
├── guidelines/               # Course project guidelines and reference materials
├── sections/                 # Individual section QMD files for each contributor
├── styles/                   # Citation style files used for report formatting
├── .gitattributes            # Git configuration attributes
├── .gitignore                # Files and folders ignored by Git
├── .lintr                    # Linting configuration for R style checking
├── EV-Adoption-Analysis.Rproj # RStudio project file
├── README.md                 # Project overview and repository documentation
├── final-report.pdf          # Rendered final project report
└── final-report.qmd          # Main combined Quarto report source file
```

## Current Plan

We intend to use this data to explore current trends and learn about what is going on in electric vehicle usage around the world.

## Author Contributions

Hojin Yoon focused on EV adoption trends, including EV sales and EV stock analysis.

John Cho focused on charging infrastructure and EV-related policy trends.

Both authors contributed to writing, editing, reviewing code, and organizing the final report.

If you have any questions, contact:
- Hojin Yoon at hfy5167@psu.edu
- John Cho at jyc5937@psu.edu.

## Generative AI Usage

Generative AI tools were used to assist with code explanations, formatting, and improving report organization. All analysis decisions, interpretations, and final report content were reviewed and verified by the authors.
