test_that("multiplication works", {
  expect_error(
    scale_colour_ymy_seq_c(name = "Purple"),
    'Colour must be "Orange", "Blue", "Green", "Coral", "Rust" or "Yellow"'
  )
})
