require(plyr)
dat = ddply(iris, .(Species), colwise(mean))
rownames(dat) = dat[,1]
dat = dat[, -1]
dat
##            Sepal.Length Sepal.Width Petal.Length Petal.Width
## redFlower      5.035000    3.480000        1.435   0.2350000
## setosa         4.986667    3.393333        1.480   0.2533333
## versicolor     5.936000    2.770000        4.260   1.3260000
## virginica      6.588000    2.974000        5.552   2.0260000
eRadar(dat)

#进一步测试data.frame
df2 <- data.frame(
  saleNum=c(10,20,30,40,50,60,70,15,25,35,45,55,65,75,25,35,45,55,65,75,85),
  seller=c(rep("Yellow",7), rep("Red",7), rep("White",7)),
  weekDay = c(rep(c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"),3))
)
dat <- df2
xvar=~weekDay; yvar= ~saleNum; series=~seller
eRadar(df2, ~weekDay, ~saleNum, ~seller)


#测试其他图表
dat = data.frame(IE8 = (40 - 1:28) * 10,
                IE9 = (38 - 1:28) * 4 + 60,
                Safari = 1:28 * 5 + 10,
                Firefox = 1:28 * 9,
                Chrome = 1:28 * 1:28 /2)
row.names(dat) = 2001:2028
chart = eRadar(dat, ymax = rep(400,5))
chart$x$visualMap=list(color=c('red','yellow'))
chart