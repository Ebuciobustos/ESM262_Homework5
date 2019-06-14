
#' Summary information about precipitation average per year in Mexico from 1901 to 2016
#'
#' computes summary information about average precipitation registered by year
#' @param TempMX_df  data frame with columns temperature (celsius), year, month, city
#' @return returns a tabble that contains,
#' \describe{
#'  \item{Year}{Year from 1901 to 2016}
#'  \item{Average}{Precipitation (mm) average per year}
#'  \item{Plot}{Average precipitation (mm) per year}
#'  }

Precipitation_average <- function(PreciMX_df, plot = TRUE){
  Precip_average <- PreciMX_df %>%
    group_by(Year) %>%
    summarise(Average = mean(Rainfall)) %>%
    ungroup()
  if(plot == TRUE) {
    Precipitation_average_plot <- ggplot(PreciMX_df, aes(x = Year, y = Rainfall)) +
      geom_point(size = 1.5) +
      ggtitle("Average Rainfall From Mexico 1901-2016") +
      labs(y="Average Rainfall", x="Year")+
      theme_classic() +
      geom_smooth(method="lm")
    print( Precipitation_average_plot)
  }
  return(Precip_average)
} #First function that summarize climate trends
