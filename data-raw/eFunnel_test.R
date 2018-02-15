library(recharts3)
x = c("Exposure" = 100, "Click" = 80, "Visit" = 60, "Query"=40, "Buy"=20)
eFunnel(x) +eTitle(title = "Funnel Plot")


funnelDf <- data.frame(namevar = c("Exposure", "Click", "Visit", "Query", "Buy"),
                       datavar = c(100, 80, 60, 40, 20), stringsAsFactors=FALSE)
eFunnel(funnelDf, ~namevar, ~datavar, theme =1)