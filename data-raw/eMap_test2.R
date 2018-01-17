library(recharts3)
mapData <- head(mapTestData_chs, 5)
eMap(mapData, namevar=~stdName, datavar = ~val1 + val2)


provinceMapData <- mapTestData_chs[6:15,]
eMap(provinceMapData, namevar=~stdName, datavar = ~val1+val2, region=unique(provinceMapData$motherName)[1])


dat <- cut(rnorm(1000), -4:4)
chart = eLine(dat)
eMarkPoint(chart, type=c('max','min'),valueIndex = 1)

eMarkLine(chart, c(1,0), c(7,2.5))


x = runif(6)
names(x) = LETTERS[1:6]
e1 = ePie(x) + eTitle("test1")
x = runif(6)
names(x) = LETTERS[1:6]
e2 = ePie(x) + eTitle("test2")
x = runif(6)
names(x) = LETTERS[1:6]
e3 = ePie(x) + eTitle("test3")
x = runif(6)
names(x) = LETTERS[1:6]
e4 = ePie(x) + eTitle("test4")
eTimeline(e1,e2,e3,e4)