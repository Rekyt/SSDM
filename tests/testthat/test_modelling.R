context("Check modelling function")

test_that('modelling function', {
  data(Env)
  data(Occurrences)
  Occurrences <- subset(Occurrences, Occurrences$SPECIES == 'elliptica')
  SDM <- modelling('GLM', Occurrences, Env,
                   Xcol = 'LONGITUDE', Ycol = 'LATITUDE', verbose = F)
  expect_is(SDM, 'GLM.SDM')
})

test_that('modelling function works with RasterLayer', {
  data(Env)
  data(Occurrences)
  Occurrences <- subset(Occurrences, Occurrences$SPECIES == 'elliptica')
  SDM <- modelling('GLM', Occurrences, Env$RAINFAL,
                   Xcol = 'LONGITUDE', Ycol = 'LATITUDE', verbose = F)
  expect_is(SDM, 'GLM.SDM')
})
