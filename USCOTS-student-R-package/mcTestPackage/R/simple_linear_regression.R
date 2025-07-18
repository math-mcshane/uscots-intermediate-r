#' Implements simple linear regression by hand
#'
#' @param dat A data frame
#' @param response The name of a response variable in the data frame.
#' @param explanatory The name of the explanatory variable in the data frame.
#'
#' @return A data frame of coefficients
#'
#' @import dplyr
#'
#' @export
simple_linear_regression <- function(data, response, explanatory){

  x <- data[[explanatory]]
  y <- data[[response]]

  x_bar <- mean(x)
  y_bar <- mean(y)

  ### Edit code after here

  sd_x <- 1
  sd_y <- 1

  beta_0 <- 1
  beta_1 <- 1

  results <- tibble::tibble(
    Intercept = 0,
    Slope = 1
  )

  return(results)

}
