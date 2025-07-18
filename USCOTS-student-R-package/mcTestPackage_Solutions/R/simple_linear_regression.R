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

  sd_x <- sd(x)
  sd_y <- sd(y)

  beta_1 <- cor(x, y) * sd_y / sd_x
  beta_0 <- y_bar - beta_1 * x_bar

  results <- tibble::tibble(
    Intercept = beta_0,
    Slope = beta_1
  )

return(results)
}
