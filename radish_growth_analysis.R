
# Set seed
set.seed(2002)


# Sampling Design

# Define factor levels
soil_type <- c("clay", "peat", "sandy")
fertiliser_use <- c("yes", "no")

# Generate factorial combinations
design_grid <- expand.grid(soil = soil_type, fertiliser = fertiliser_use)

# Implement replication
sampling_design <- design_grid[rep(1:nrow(design_grid), each = 3), ]

# Assign pots
sampling_design$pot_id <- 1:18

# Execute randomisation
set.seed(123)
randomised_design <- sampling_design[sample(nrow(sampling_design)), ]

# Show the final design
print(randomised_design)


# Data Analysis


# Load dataset
load("CW1.RData")


# Grouped Boxplot for distribution analysis
boxplot(weight ~ soil * fertiliser, 
        main = "Radish Weight by Soil Type and Fertilser Use",
        xlab = "Soil and Fertiliser combination",
        ylab = "Weight (g)",
        col = c("orange", "brown", "yellow"),
        las = 1)


# Interaction Analysis
interaction.plot(x.factor = soil, trace.factor = fertiliser, response = weight,
                 main = "Interaction Plot: Impact of Soil Type and Fertiliser on Radish Weight",
                 xlab = "Soil Type",
                 ylab = "Mean Radish Weight (g)",
                 trace.label = "Fertiliser Use",
                 fixed = TRUE,
                 legend = TRUE, 
                 las = 1)


# Model fitting
model <- aov(weight ~ soil * fertiliser)
summary(model)


# Examine model coefficients
coef(model)


# Use the existing design_grid for predictions
predictions <- predict(model, newdata = design_grid)

# Display the prediction table
prediction_table <- cbind(design_grid, Predicted_Weight = round(predictions, 2))
print(prediction_table)
