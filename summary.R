# Takes the data from the dataset iris and creates an new data.frame summary_iris that contains 
# the average sepal length, sepal width, petal length, and petal width for each other the three species. 
data("iris")
summary_iris <- group_by(iris, Species) %>%
  summarise(average_sepal_length = mean(Sepal.Length), average_sepal_width = mean(Sepal.Width), 
            average_petal_length = mean(Petal.Length), average_petal_width = mean(Petal.Width))