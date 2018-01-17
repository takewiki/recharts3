##error to be fixed.
library(recharts3)
echartsExample("http://echarts.baidu.com/demo.html#effectScatter-bmap")


#测试js代码 
JScodes = "
var option = {
title: {
text: 'ECharts entry example'
},
tooltip: {},
legend: {
data:['Sales']
},
xAxis: {
data: ['shirt','cardign','chiffon shirt','pants','heels','socks']
},
yAxis: {},
series: [{
name: 'Sales',
type: 'bar',
data: [5, 20, 36, 10, 10, 20]
}]
};
"
echartsExample(JScontent=JScodes)