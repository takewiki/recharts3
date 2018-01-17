# 测试下中文
library(recharts3)
iris$Species <- as.character(iris$Species)
iris$Species[1:20] ="小红帽"
ePoints(iris, ~Sepal.Length, ~Sepal.Width, series = ~Species)

#进一步处理数据
iris$Species <- as.character(iris$Species)
iris[1:20, "Species"] = "redFlower"
ePoints(iris[,3:5], xvar = ~Petal.Length, yvar = ~Petal.Width, series = ~Species, theme = 1)

ePoints(iris[,3:5], xvar = ~Petal.Length, yvar = ~Petal.Width, series = ~Species, theme = 6)
