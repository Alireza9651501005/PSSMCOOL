context("checking that the length of FPSSM feature vectorS is equal to 20,400 respectively and for FPSSM2 is 100")

test_that("whether the FPSSM gives us the expected output",{
  ss<-FPSSM(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
  expect_equal(length(ss[[1]]),20)
  expect_equal(length(ss[[2]]),400)
  s1<-system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL")
  s2<-system.file("extdata","C7GRQ3.txt.pssm",package="PSSMCOOL")
  s<-FPSSM2(s1,s2)
  expect_equal(length(s),100)
})

