dir.create("code")
dir.create("outputs")
dir.create("data")


animals <- c("Lion", "Moose", "Bear", "German Shepard", "Deer")

mean_weight_male <- c(420, 1200, 600, 75, 150)

remove(animals,mean_weight_male)


data <- data.frame(animals, mean_weight_male)

library(ggplot2)


?ggplot
?geom_bar

data <- data %>% arrange(mean_weight_male) %>%    # First sort by mean weight. This sort the dataframe but NOT the factor levels
    mutate(animals=factor(animals, levels=animals)) #sorts by factor level
graph <- ggplot(data, aes(x = animals, y = mean_weight_male)) + geom_bar(stat = "identity", color = 'blue', fill = 'white') + coord_flip()

graph + ggtitle("Mean Weight of Male Animals") + ylab("Mean Weight (lbs)") + xlab("Species")
