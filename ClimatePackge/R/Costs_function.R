#' Summary information about the costs of market squid distribution shift due to El Nino events
#'
#' computes summary information about the costs of market squid distribution shift due to El Nino events
#' @param Market_squid_costs data frame with random temperature (C) and costs of each temperature in million dollars
#' @return returns the next information,
#' \describe{
#'  \item{Temperature_squid}{Expected temperature (C)}
#'  \item{Costs}{Costs associated to the expected temperature (C)}
#'  }

Temperature_squid <- c(25, 24, 26, 27, 25, 23)
Costs <- c(1, 0.5, 1.5, 2, 1, 0.3)

costs_squid_df <- data.frame(Temperature_squid, Costs)

Costs_function <- function(Market_Squid_costs){
  Total_costs <-costs_squid_df %>%
    filter(Temperature_squid == mean(Temperature_squid)) %>%
    ungroup()
}

(z <- Costs_function(Market_Squid_costs = costs_squid_df))
