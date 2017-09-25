#' Tidy Seasonal Adjustment
#'
#' Wrapper for 'seasonal' package.
#' @param df A data frame
#' @param name_of_date_col Name of df column containing dates. Must be date formatted.
#' @param name_of_val_col Name of df column containing values. Must be numeric.
#' @keywords seasonal
#' @export
#' @examples 
#' df$SA <- function(df, date, NSA)

seas_adjust <- function(df, name_of_date_col = "date", name_of_val_col = "value") {
  library(seasonal)
  library(dplyr)
  
  expr1 <- enquo(name_of_date_col)
  expr2 <- enquo(name_of_val_col)
  
  w <- df %>% select(date = UQ(expr1), val = UQ(expr2))
  
  w.ts <- ts(w$val, frequency = 12, start = c(year(w$date[1]), month(w$date[1])))
  w.sa <- seas(w.ts)
  rm(w, w.ts)
  as.numeric(w.sa$data[,1])
}
