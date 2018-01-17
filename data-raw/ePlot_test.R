定义数据部分
series = list(list(
  name = 'Sales',
  type = 'bar',
  data = c(5, 20, 36, 10, 10, 20)
))
# 定义坐标轴部分
ext = list(
  xAxis = list(list( 
    data = c('shirt','cardign','chiffon shirt','pants','heels','socks')
  )),
  yAxis = list(list())
)
# 绘制
ePlot(series, ext)


#' 测试从底层处理这个总是，直接使用底层接口处理。
opt = list(
xAxis = list(list( 
  data = c('shirt','cardign','chiffon shirt','pants','heels','socks')
)),

yAxis = list(list()),
series = list(list(
  name = 'Sales',
  type = 'bar',
  data = c(5, 20, 36, 10, 10, 20)
))
)
htmlwidgets::createWidget('echarts', opt, package = 'recharts3');

#进一步处理数据
series2 = list(
  list(
    name = '蒸发量',
    type = 'bar',
    data = c(2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3)
  ),
  list(
    name = '降水量',
    type = 'bar',
    data = c(2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3)
    
  ),
  list(
    name = '平均温度',
    type = 'line',
    yAxisIndex = 1,
    data = c(2.0, 2.2, 3.3, 4.5, 6.3, 10.2, 20.3, 23.4, 23.0, 16.5, 12.0, 6.2)
    
  )
)

ext = list(
  xAxis = list(list(
    type = "category",
    data = c("1月", "2月", "3月", "4月", "5月", "6月",
             "7月", "8月", "9月", "10月", "11月",  "12月")
  )),
  yAxis = list(
    list(
      type =  'value',
      name =  '水量',
      min =  0,
      max =  250,
      interval =  50,
      axisLabel =  list(
        formatter =  '{value} ml'
      )
    ),
    list(
      type =  'value',
      name =  '温度',
      min =  0,
      max =  25,
      interval =  5,
      axisLabel = list(
        formatter= '{value}℃'
      )
    )
  ))
ePlot(series2, ext )