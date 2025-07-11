########################################################
########################################################
########################################################
# simulated log relationships
########################################################
########################################################
########################################################

# Load required libraries
library(ggplot2)
library(simr)

# Set a random seed for reproducibility
set.seed(42)

# Define a function to simulate the data
simulate_data <- function(beta1_value) {
  # Simulate team size and noise
  team_size <- runif(100, min = 5, max = 100)  # TeamSize from 5 to 100
  epsilon <- rnorm(100, mean = 0, sd = 5)  # Random error term
  
  # Define the regression model
  beta0 <- 50  # Intercept
  beta1 <- beta1_value  # Pass in the specified beta1 value
  
  # Compute the outcome variable
  speed <- beta0 + beta1 * log(team_size) + epsilon
  
  # Return the simulated data
  data.frame(TeamSize = team_size, Speed = speed)
}

# Simulate two datasets (one with positive and one with negative beta1)
data_positive <- simulate_data(beta1_value = 3)  # Positive beta1
data_negative <- simulate_data(beta1_value = -3)  # Negative beta1

# Plot both relationships
ggplot() +
  geom_point(data = data_positive, aes(x = TeamSize, y = Speed), color = "blue") +
  geom_smooth(data = data_positive, aes(x = TeamSize, y = Speed), method = "lm", formula = y ~ log(x), color = "blue", linetype = "dashed") +
  geom_point(data = data_negative, aes(x = TeamSize, y = Speed), color = "red") +
  geom_smooth(data = data_negative, aes(x = TeamSize, y = Speed), method = "lm", formula = y ~ log(x), color = "red", linetype = "dashed") +
  scale_x_continuous(trans = "log10") +  # Log scale for TeamSize
  theme_minimal() +
  labs(
    title = "Simulated Relationships Between Speed and log(TeamSize)",
    x = "Team Size (Log Scale)",
    y = "Speed"
  ) +
  theme(legend.position = "none")


########################################################
########################################################
########################################################
# simulated quadratic relationships
########################################################
########################################################
########################################################
