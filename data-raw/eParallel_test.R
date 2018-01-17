require(plyr)

axisList = list(
  list(index=7, type="category", data = c("low", "middle", "high")),
  list(index=6, inverse=TRUE, max=50, nameLocation="start")
)
eParallel(head(parallelDf, 20), series=~groupName, axisList = axisList)


