# Imporitng the dataset
dataset = read.csv("scores.csv")

# Checking if dataset is in normal distribution
shapiro.test(dataset$Male)
shapiro.test(dataset$Female)

# Checking for homogeneity of variances
var.test(x=dataset$Male, y=dataset$Female)

library(ggplot2)

# Reshape using base R
long_data <- stack(dataset)
colnames(long_data) <- c("Score", "Group")

# Boxplot
ggplot(long_data, aes(x = Group, y = Score, fill = Group)) +
  geom_boxplot(alpha = 0.7, outlier.color = "red") +
  labs(title = "Comparison of Male vs Female Test Scores",
       x = "Group",
       y = "Test Score") +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5, size = 14, face = "bold"))
