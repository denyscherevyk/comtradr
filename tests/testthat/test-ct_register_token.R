context("ct_register_token")

test_that("setting API token ajusts options", {
  skip_on_cran()

  # Set API token.
  ct_register_token("some_token_str")

  ct_options <- getOption("comtradr")$comtrade

  expect_equal(ct_options$token, "some_token_str")
  expect_equal(ct_options$account_type, "premium")
  expect_equal(ct_options$per_hour_limit, 10000)
})


test_that("throw error with invalid input to arg 'token'", {
  expect_error(ct_register_token(555))
})
