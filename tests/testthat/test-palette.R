test_that("check warning", {
  expect_warning (
    ymy_palette()(8),
    "Ymy Colour Palette only has 6 colours"
  )
})
