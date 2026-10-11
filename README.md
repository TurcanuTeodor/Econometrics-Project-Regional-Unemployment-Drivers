# Regional Unemployment Drivers: Econometric Analysis in R

This project analyzes how macroeconomic, labor-market, and demographic variables help explain regional unemployment patterns using a structured econometric workflow. The repository combines an Excel-based data source, an R regression model, and a presentation deck to turn raw labor-market data into evidence-based insights.

The analysis is designed to showcase applied econometrics, reproducible statistical modeling, and business-oriented interpretation in a format that is credible to recruiters, data analysts, and technical stakeholders.

---

## Key Features

- Econometric analysis of unemployment determinants using a real regional dataset in Excel.
- Regression modeling in R with multiple specifications, including a capital-region dummy variable.
- Data cleaning and descriptive statistics to identify variable structure and central tendencies.
- Statistical diagnostics for residual normality, heteroskedasticity, autocorrelation, and multicollinearity.
- A presentation file summarizing the key findings and model interpretation for stakeholder communication.
- A clean repository structure suitable for GitHub portfolio presentation.

---

## Project Overview

This project investigates the relationship between unemployment and several explanatory variables, including:

- GDP per capita
- tertiary education level
- employment rate
- population density
- capital-region classification

The analytical objective is to estimate whether these variables are statistically associated with unemployment and to assess whether the model satisfies the assumptions required for valid econometric inference.

---

## Data Snapshot

The repository is grounded in a real Excel-based dataset and a reproducible R workflow. Based on the actual script, the project uses the following variables:

- `UnemploymentRate%`
- `GDPperCapita_PPS`
- `TertiaryEducation%`
- `EmploymentRate%`
- `PopulationDensity_inh_km2`
- `Dummy_CapitalRegion`

The script also performs data cleaning by removing rows with missing values across all columns before fitting the models, which helps ensure a more stable analytical base.

---

## Model Structure

The project includes two econometric specifications, directly reflected in the R script:

```r
# Model 1: without dummy
model1 <- lm(`UnemploymentRate%` ~ 
               GDPperCapita_PPS + 
               `TertiaryEducation%` + 
               `EmploymentRate%` + 
               PopulationDensity_inh_km2,
             data = df)
```

```r
# Model 2: with capital region dummy
model2 <- lm(`UnemploymentRate%` ~ 
               GDPperCapita_PPS + 
               `TertiaryEducation%` + 
               `EmploymentRate%` + 
               PopulationDensity_inh_km2 + 
               Dummy_CapitalRegion,
             data = df)
```

This structure is useful for demonstrating both the baseline explanatory model and the extended regional specification in a recruiter-facing portfolio.

---

## Architecture & Design

The current repository follows a straightforward analytical pipeline:

1. Data ingestion
   - The dataset is stored in the Excel file and loaded into R for analysis.

2. Data preparation
   - Missing rows are filtered out before modeling.
   - Descriptive statistics are generated to summarize the variables used in the regression.

3. Econometric modeling
   - A baseline model estimates unemployment as a function of the selected explanatory variables.
   - An extended model adds the capital-region dummy to test whether regional effects remain after controlling for the other variables.

4. Model validation
   - Residual assumptions are checked using diagnostics such as the Shapiro test, Breusch-Pagan test, Durbin-Watson test, and VIF.

5. Presentation of findings
   - The PowerPoint deck communicates the main conclusions in a concise, presentation-ready format.

> At present, the repository’s core design artifacts are the dataset, the R script, and the presentation deck. These files form the analytical workflow and are the main elements that should be showcased in the project portfolio.

---

## Tech Stack

- R
- RStudio
- Microsoft Excel
- Microsoft PowerPoint
- GitHub
- Statistical testing packages: `readxl`, `dplyr`, `psych`, `lmtest`, `car`, `sandwich`

---

## Project Layout

```text
Econometrics-Project/
├── README.md
├── DatasetEconometrie.xlsx
├── RegressionModel.R
├── Econometrics_project.pptx
└── (additional documentation or diagrams can be added here later)
```

This repository currently contains the main analytical artifacts directly in the project root.

---

## How to Run

### 1) Prerequisites

- Install R from CRAN.
- Install RStudio (recommended for easier script execution and output review).
- Ensure that the file `DatasetEconometrie.xlsx` is present in the same working directory as the script.

### 2) Install Required Packages

Open R or RStudio and run:

```r
install.packages(c("readxl", "dplyr", "psych", "lmtest", "car", "sandwich"))
```

### 3) Run the Regression Script

Open `RegressionModel.R` in RStudio and run the file, or execute:

```r
source("RegressionModel.R")
```

### 4) Review the Output

The script performs the following:

- reads the Excel dataset
- checks the data structure and summary statistics
- removes incomplete rows
- builds the regression models
- performs model diagnostics
- prints the results to the console

### 5) Open the Presentation

Open `Econometrics_project.pptx` to review the project summary and presentation narrative.

---

## Statistical Focus

The core question of this project is whether unemployment can be explained by a set of regional economic and social indicators. The modeling process emphasizes both explanatory power and statistical validity.

> Key insight: The project estimates whether unemployment is systematically related to GDP per capita, tertiary education, employment rate, and population density.

> Key insight: The dummy variable for the capital region tests whether a regional structural effect remains after controlling for the other variables.

> Key insight: Diagnostic tests are essential because valid coefficient interpretation depends on checking assumptions such as residual normality and stable variance.

---

## Why This Project Is Portfolio-Ready

This project is well suited for a technical portfolio because it demonstrates:

- real-world econometric analysis
- data cleaning and exploratory analysis
- regression modeling in R
- statistical diagnostics and interpretation
- concise presentation of results for non-technical stakeholders

It reflects a strong analytical workflow and communicates both technical depth and practical decision-making value.

---

## Summary

This repository presents a compact but credible econometric project focused on regional unemployment drivers. It is a strong candidate for GitHub-based portfolio presentation because it combines quantitative analysis, reproducible code, and clear communication of results.

The project is especially appropriate for showcasing applied econometrics, labor-market analysis, and evidence-based modeling skills to recruiters, analysts, and data teams.
