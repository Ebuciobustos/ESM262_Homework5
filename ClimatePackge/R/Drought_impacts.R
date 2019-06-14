#' Summary information about the year in which is expected a drought according to highest temperatures
#'
#' computes summary information about the year in which is expected a drought according to highest temperatures
#' @param Drought_df  data frame with columns temperature (celsius), year, month, city
#' @return returns a tabble that contains,
#' \describe{
#'  \item{Temperature}{maximum temperature (C)}
#'  \item{year}{Year with highest temperature (C)}
#'  \item{Moth}{Month in which the highest temperature (C)in a particular year was registered}
#'  \item{Country}{The country}
#'  \item{Plot}{Maximum temperatures (C) by year}
#'  }


Drought_impacts <- function(Drought_df){
  Rainfall_changes <- Drought_df %>%
    group_by(Year) %>%
    filter(Temperature == max(Temperature))

  y <- TempMX %>%
    select(Temperature)
}
yr=2019
Rainfall_change_temperature= 0.5 #Annual SST in celsius

while (Rainfall_change_temperature < 25)   {
  Rainfall_change_temperature = Rainfall_change_temperature + 0.01* Rainfall_change_temperature
  yr = yr + 1
}

