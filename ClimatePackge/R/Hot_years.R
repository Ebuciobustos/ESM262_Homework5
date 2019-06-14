#' Summary information about the warmest years in Mexico from 1901 to 2016
#'
#' computes summary information about maximum temperature registered by year
#' @param TempMX_df  data frame with columns temperature (celsius), year, month, city
#' @return returns the next information,
#' \describe{
#'  \item{Temperature}{Temperature (C) at which the drought is expected}
#'  \item{year}{Year in which the drought is expected}
#'  }


Warmer_years <- function(TempMX_df, plot = TRUE){
  Hot_years <- TempMX_df %>%
    group_by(Year) %>%
    filter(Temperature == max(Temperature)) %>%
    ungroup()
  if(plot == TRUE) {
    Hot_years_plot <- ggplot(TempMX_df, aes(x = Year, y = Temperature)) +
      geom_point(size = 1.5) +
      ggtitle("Maximum Temperature in Celsius From Mexico 1901-2016") +
      labs(y="Anually Maximum Temperature (degrees C)", x="Year")+
      theme_classic() +
      geom_smooth(method="lm")
    print(Hot_years_plot)
  }
  return(Hot_years)
}
