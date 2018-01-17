library(recharts3)
x = runif(6)
names(x) = LETTERS[1:6]
ePie(x) + eTitle("test")

#test2
testData <- head(mapTestData_chs, 5)
ePie(testData, ~stdName, ~val1)


#test3
x = runif(6)
names(x) = LETTERS[1:6]
ePie(x,reset_radius = c(80,120),showL = T,labelformatter = "{b}:{c}")


