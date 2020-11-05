#' A Function to extract variablesa and count
#'
#' This function allows you to extract the variables from the bikes dataset and include the column count.
#' Make new columns for the day, month and hour from the datetime column.
#' And also set day, month and hour as factors.
#' @param data
#' @export
#' @examples
#' keep_all()

keep_all <- function(data) {
  variables <- c("season",
                 "holiday",
                 "workingday",
                 "weather",
                 "temp",
                 "atemp",
                 "humidity",
                 "windspeed",
                 "day",
                 "hour",
                 "month",
                 "count")
  data$day   <- wday(ymd_hms(data$datetime))
  data$hour  <- hour(ymd_hms(data$datetime))
  data$month <- month(ymd_hms(data$datetime))
  data$day   <- as.factor(data$day)
  data$hour  <- as.factor(data$hour)
  data$month <- as.factor(data$month)
  return(data[,variables])
}
