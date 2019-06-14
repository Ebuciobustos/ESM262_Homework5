#' Summary information about the sea surface maximum temperatures effects on market squid and sardine at the California coast
#'
#' computes summary information about ea surface maximum temperatures effects on market squid and sardine at the California coast
#'
#' @param El_nino_df  data frame with columns temperature (celsius), year, month, city
#' @return returns a tabble that contains,
#' \describe{
#'  \item{Squid_impacts}{Temperature (C) predicted at which market squid will be impacted}
#'  \item{Sardine_impacts}{Temperature (C) predicted at which market squid will be impacted}
#'  }


Nino_impacts <- function(El_nino_df){
  Hot_days <- El_nino_df %>%
    group_by(Year) %>%
    filter(Temperature == max(Temperature))
  {
    y <- TempMX %>%
      select(Temperature)
    }

  yr=2019
  SST_changes_squid = 0.5 #Annual SST in celsius

  while (SST_changes_squid < 25)   {
    SST_changes_squid = SST_changes_squid + 0.01* SST_changes_squid
    yr = yr + 1
  }

  SST_changes_sardine = 0.5 #Annual SST in celsius
  while (SST_changes_sardine > 26)   {
    SST_changes_sardine = SST_changes_sardine + 0.01* SST_changes_sardine
    yr = yr + 1
  }

  Nino_impact_output <- list('Squid_impacts' = SST_changes_squid , 'sardine_impacts' = SST_changes_sardine)
  return(Nino_impact_output)
}
