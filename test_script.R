library(dplyr)
library(ggplot2)
head(iris)
summary(iris)
iris_grouped <- iris %>% 
  group_by(Species) %>%
  summarize(mean_sepal_length = mean(Sepal.Length))
iris_grouped

ggplot(iris_grouped, aes(x=Species, y = mean_sepal_length)) +
  geom_col() +
  xlab("Species") +
  ylab("Mean Sepal Length")


ggplot(iris, aes(x=Sepal.Length)) +
  geom_histogram() +
  xlab("Species") +
  ylab("Mean Sepal Length")