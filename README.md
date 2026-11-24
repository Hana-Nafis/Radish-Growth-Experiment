# Radish Growth: Experimental Design and ANOVA

## Overview

This project was completed as part of the MA52121 coursework at the University of Bath. It investigates how soil type and fertiliser use affect the growth of radishes, measured by weight four weeks after planting.

The study considers two experimental factors:

- Soil type: Clay, Peat and Sandy
- Fertiliser use: Yes and No

A 3 × 2 factorial experimental design is used to investigate the individual and combined effects of these factors on radish weight.

## Objectives

- Develop an experimental design to investigate factors affecting radish growth.
- Construct a balanced treatment allocation using a completely randomised design.
- Explore differences in radish weight across soil and fertiliser combinations.
- Apply two-way ANOVA to evaluate main effects and interaction effects.
- Identify the treatment combination associated with the highest predicted radish weight.

## Methodology

The analysis follows three stages:

1. Experimental design: A factorial design is proposed to examine three soil types and two fertiliser levels, including their potential interaction.
2. Sampling and randomisation: A completely randomised design is constructed for 18 pots, with three replicates for each of the six treatment combinations.
3. Statistical analysis: Boxplots and interaction plots are used for exploratory analysis, followed by a two-way ANOVA model with an interaction term. Model coefficients and predicted treatment means are examined to compare the combinations.

## Key Findings

The analysis identifies the following findings:

- Soil type and fertiliser use are statistically significant factors associated with radish weight.
- The interaction between soil type and fertiliser use is also statistically significant (p = 0.00338), suggesting that the effect of fertiliser varies across soil types.
- Fertiliser use has a substantial positive association with radish weight.
- Peat soil with fertiliser produces the highest predicted mean weight of 24.40 g.
- Sandy soil without fertiliser produces the lowest predicted mean weight of 18.27 g.

The results suggest that Peat soil combined with fertiliser is the most promising treatment for maximising radish weight within this experiment.

## Tools and Technologies

- R
- Base R statistical functions
- Two-way Analysis of Variance (ANOVA)
- Factorial experimental design
- Data visualisation

## Repository Structure

```text
├── README.md
├── radish_growth_analysis.R
└── data/
    └── README.md
```

## Dataset

The analysis uses `CW1.RData`, an academic coursework dataset containing 18 observations and the following variables:

- `soil`: Soil type (Clay, Peat or Sandy).
- `fertiliser`: Whether fertiliser was used (Yes or No).
- `weight`: Radish weight in grams after four weeks.

The original dataset is not included because it was supplied for academic coursework and is not publicly available. Refer to `data/README.md` for further information.

## Reproducibility

To run the analysis:

1. Obtain an authorised copy of `CW1.RData`.
2. Place the file in the working directory used by the R script, or update the file path in the script.
3. Open and run `radish_growth_analysis.R` in R or RStudio.

The script includes the treatment allocation, exploratory plots, ANOVA model, coefficient extraction and predicted treatment means.

## Limitations

The experiment contains only three replicates per treatment combination. Consequently, the findings should be interpreted in the context of this relatively small dataset. The results indicate associations under the experimental conditions and should not automatically be generalised to other growing environments.
