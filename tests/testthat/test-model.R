test_that("Mean error test", {
  expected_mean <- 10
  model_output <- run_model()
  model_mean  <- mean(model_output)
  mean_abs_error <- abs(model_mean - expected_mean)
  expect_lt(mean_abs_error,0.2,'Sample mean has error')
})

test_that("SD error test", {
  expected_sd <- 1
  model_output <- run_model()
  model_sd <- sd(model_output)
  sd_abs_error <- abs(model_sd - expected_sd)
  expect_lt(sd_abs_error,0.15,'Sample sd has error')
})
