# Econometric Analysis of Regional Unemployment Drivers

A data-driven econometric project that connects macroeconomic, labor-market, and demographic indicators to explain regional unemployment patterns with statistical rigor and actionable insight.

This repository demonstrates a full analytical workflow: raw data preparation in Excel, regression modeling in R, diagnostic testing for model validity, and a polished presentation-ready narrative designed to communicate findings to both technical and non-technical audiences.

---

## Key Features

- Comprehensive econometric analysis of unemployment determinants using structured regional data.
- R-based regression modeling with multiple specifications, including a regional dummy variable for capital-region effects.
- Data cleaning and descriptive statistics to summarize key variables and identify patterns prior to inference.
- Statistical diagnostics for normality, heteroskedasticity, autocorrelation, and multicollinearity.
- Supportive design and architecture artifacts (.vpp) capturing the conceptual structure and analytical workflow.
- Presentation-ready outputs for stakeholder communication, including slides and methodology documentation.

---

## Project Overview

This project investigates how socio-economic indicators influence unemployment across regions by estimating a multivariate linear regression model. The analytical framework combines:

- Economic indicators such as GDP per capita and employment rate.
- Human-capital measures such as tertiary education share.
- Demographic factors such as population density.
- A regional dummy variable to test whether the capital region exhibits distinct labor-market behavior.

The resulting analysis is designed to move beyond descriptive statistics and provide a stronger causal and predictive lens for understanding labor-market disparities.

---

## Architecture & Design

The project’s architecture follows a clear analytical pipeline from raw source data to modeled insight:

1. Data Acquisition and Preparation
   - The source dataset is stored in the Excel file and cleaned for missing or incomplete observations.
   - Descriptive statistics are generated to understand the distribution and central tendency of the variables.

2. Econometric Modeling
   - The R script builds baseline and extended regression models.
   - The main model estimates unemployment as a function of GDP per capita, tertiary education, employment rate, and population density.
   - The extended model adds a capital-region dummy to assess whether regional structural effects remain after controlling for other factors.

3. Validation and Diagnostics
   - Residual normality is assessed using the Shapiro test.
   - Heteroskedasticity is evaluated through the Breusch-Pagan test.
   - Autocorrelation is tested via the Durbin-Watson statistic.
   - Multicollinearity is checked using variance inflation factors (VIF).

4. Communication and Reporting
   - The presentation summarizes findings in a concise, visually structured format.
   - The methodology document provides deeper technical context and background information.
   - The Visual Paradigm (.vpp) files represent the conceptual and structural design of the project, helping explain the analytical logic and system relationships.

> The .vpp diagrams are not just visual supplements; they formalize the project’s conceptual design by mapping the relationships between data inputs, analytical transformations, modeling logic, and interpretation layers.

---

## Tech Stack

- R programming language
- RStudio for model implementation and diagnostics
- Microsoft Excel for dataset preparation and exploration
- Visual Paradigm for conceptual and structural diagramming
- Microsoft PowerPoint for presentation delivery
- Microsoft Word / DOCX documentation for methodology and narrative context
- GitHub for portfolio hosting and project visibility

---

## Project Layout

```text
Econometrics-Project/
├── README.md
├── DatasetEconometrie/
│   └── DatasetEconometrie.xlsx
├── RegressionModel/
│   └── RegressionModel.R
├── Econometrics_project/
│   └── Econometrics_project.pptx
├── Documentation/
│   ├── Methodology_Document.docx
│   └── Background_and_Methodology.pdf   # optional supporting documentation
├── Diagrams/
│   ├── Conceptual_Architecture.vpp
│   └── Structural_Design.vpp
├── Outputs/
│   └── Model_Summary_Results.md          # optional summary export
└── Notes/
    └── Project_Notes.txt                  # optional commentary or working notes
```

> If the repository is organized differently in your local environment, the logical structure above reflects the project workflow and can be adapted to match your GitHub upload.

---

## How to Run

### 1) Prerequisites

- Install R from the official CRAN distribution.
- Install RStudio for a more convenient script editor and console.
- Ensure the Excel dataset is available in the working directory or update the file path in the script.

### 2) Install Required Packages

Open R or RStudio and run:

```r
install.packages(c("readxl", "dplyr", "psych", "lmtest", "car", "sandwich"))
```

### 3) Open the Analysis Script

Run the script located in `RegressionModel.R`.

```r
source("RegressionModel.R")
```

If the file path is different in your environment, update it to match your folder structure, for example:

```r
df_raw <- read_excel("DatasetEconometrie/DatasetEconometrie.xlsx")
```

### 4) Explore the Data

The script reads the Excel dataset, displays the structure and summary statistics, and creates the regression models used in the analysis.

### 5) Review Model Output

The console will display:

- variable summaries
- regression coefficients
- model significance metrics
- residual diagnostics
- heteroskedasticity and autocorrelation tests

### 6) Open the Presentation and Documentation

- Open `Econometrics_project.pptx` to review the summary of findings.
- Refer to the project document for a more detailed methodological narrative.
- Use the Visual Paradigm files to understand the conceptual and structural modeling architecture.

---

## Statistical Focus and Interpretation

This project is centered on understanding how unemployment responds to several structural and economic variables. The core model aims to identify whether stronger economic performance and higher human-capital investment are statistically associated with lower unemployment.

> Key statistical insight: The analysis evaluates whether unemployment varies systematically with GDP per capita, tertiary education, employment rate, population density, and regional characteristics.

> Key statistical insight: The inclusion of a capital-region dummy strengthens the model by testing whether regions with unique institutional or economic profiles behave differently from the rest of the country.

> Key statistical insight: Model diagnostics are essential here: without verifying residual behavior, coefficient estimates may be misleading. The project explicitly tests assumptions that support valid econometric inference.

---

## Why This Project Stands Out

This project is valuable for recruiters and data-science stakeholders because it demonstrates a professional analytical workflow rather than a simple spreadsheet exercise. It reflects:

- practical econometric thinking
- applied statistical reasoning
- domain-specific insight in labor economics
- reproducible analysis in R
- clear communication of quantitative findings
- strong portfolio quality for technical and analytical roles

By combining modeling, diagnostics, and presentation-ready storytelling, this project conveys both technical competence and business-oriented interpretation.

---

## Summary

This repository showcases a rigorous, end-to-end econometric analysis designed to reveal the drivers of unemployment through statistical modeling and structured reasoning. It is particularly well-suited for presenting to recruiters, analytics teams, and data-science hiring managers looking for evidence of:

- statistically grounded analysis
- strong technical communication
- applied econometrics in practice
- reproducible research workflows
- professional-quality project presentation

If you are preparing to publish this project on GitHub, this README is a strong foundation for demonstrating both analytical depth and portfolio polish.
