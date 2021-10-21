test_that("multiplication works", {
  expect_error(
    scale_colour_ymy_seq_c(name = "Purple"),
    "Colour must orange, blue, green, coral, rust, yellow"
  )
})
