library(recharts3);
df2 = data.frame(
  saleNum=c(10,20,30,40,50,60,70,15,25,35,45,55,65,75,25,35,45,55,65,75,85),
  seller=c(rep("小黄",7), rep("小红",7), rep("小白",7)),
  weekDay = c(rep(c("周一","周二","周三","周四","周五","周六","周日"),3))
)
eBar(dat= df2, xvar=~weekDay, yvar=~saleNum, series=~seller)

#测试
eBar(WorldPhones)
class(WorldPhones);
str(WorldPhones);

#测试因子
library(recharts3)
eBar(cut(rnorm(1000), -4:4))


require(plyr)
## Loading required package: plyr
dat = ddply(iris, .(Species), colwise(mean))  
rownames(dat) = dat[,1]
dat = dat[, -1]
dat
##            Sepal.Length Sepal.Width Petal.Length Petal.Width
## redFlower      5.035000    3.480000        1.435   0.2350000
## setosa         4.986667    3.393333        1.480   0.2533333
## versicolor     5.936000    2.770000        4.260   1.3260000
## virginica      6.588000    2.974000        5.552   2.0260000
eBar(dat)

处理水平图
eBar(dat, horiz = TRUE)


#mode 2 input.
df2 <- data.frame(
  saleNum=c(10,20,30,40,50,60,70,15,25,35,45,55,65,75,25,35,45,55,65,75,85),
  seller=c(rep("Yellow",7), rep("Red",7), rep("White",7)),
  weekDay = c(rep(c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"),3)),
  stringsAsFactors =FALSE
)
dat <- df2
xvar=~weekDay; yvar= ~saleNum; series=~seller
eBar(df2, xvar = ~seller, ~saleNum, ~weekDay )

#使用累计图
eBar(df2, xvar = ~seller, ~saleNum, ~weekDay, stack=T)


eBar(df2, xvar = ~seller, ~saleNum, ~weekDay, stackGroup = list(c('Sat','Sun')))


dat <- df2[1:7,]
eBar(dat, ~weekDay, ~saleNum)
