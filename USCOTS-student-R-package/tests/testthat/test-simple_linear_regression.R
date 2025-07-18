test_that(
  desc = "simple linear regression is correct",
  code = {
    my_result <- simple_linear_regression(
        data = mtcars,
        response = "gear",
        explanatory = "cyl"
      )

    mass_result <- lm(gear ~ cyl, data = mtcars)

    expect_equal(
      coef(mass_result)[['cyl']],
      my_result$Slope,
      tolerance = 0.05
    )
    expect_equal(
      coef(mass_result)[[1]],
      my_result$Intercept,
      tolerance = 0.05
    )
  }
)
