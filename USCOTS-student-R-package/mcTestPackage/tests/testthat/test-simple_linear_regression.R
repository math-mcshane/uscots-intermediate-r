test_that("simple linear regression is correct", {

  my_result <- simple_linear_regression(
      data = mtcars,
      response = "mpg",
      explanatory = "hp"
    )

  mass_result <- lm(mpg ~ hp, data = mtcars)

  expect_equal(
    coef(mass_result)[['hp']],
    my_result$Slope,
    tolerance = 0.05
  )
  expect_equal(
    coef(mass_result)[[1]],
    my_result$Intercept,
    tolerance = 0.05
  )

})
