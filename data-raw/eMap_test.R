#' 测试全国地图
library(recharts3)
mapData <- data.frame(province=c("上海", "江苏", "广东", "黑龙江"), 
                      val1=c(100, 200, 300, 500), val2=c(200,300,400,200), val3=c(1,2,3,5), stringsAsFactors=F)

## 全国地图
eMap(mapData, namevar=~province, datavar = ~val1+val2)

provinceMapData <- data.frame(city=c("扬州市", "南京市", "苏州市"), value=c(100, 200, 300),
                              val2=c(200,300,400), val3=c(1,2,3), stringsAsFactors=F)
## 省份地图
eMap(provinceMapData, namevar=~city, datavar = ~value+val2, region="江苏")