if(!requireNamespace("reshape2",quietly=TRUE)) {
  install.packages("reshape2")
}

library(reshape2)

data("airquality")

print(head(airquality))

# Melt
melt_data <- melt(
  airquality,
  id.vars=c("Month","Day")
)

print(head(melt_data))

# Cast
cast_data <- dcast(
  melt_data,
  variable ~ Month,
  fun.aggregate=mean,
  na.rm=TRUE
)

print(cast_data)

# Monthly averages
monthly_avg <- aggregate(
  cbind(Ozone,Solar.R,Wind,Temp) ~ Month,
  data=airquality,
  FUN=function(x) mean(x,na.rm=TRUE)
)

print(monthly_avg)