library(shiny)
runApp("Shiny01")

boxplot(airquality$Wind,airquality$Month)
hist(airquality$Wind)
abline(v=mean(airquality$Wind),col="yellow")
barplot(tapply(iris$Petal.Length,iris$Species, mean))

