context("test format date and time")

test_that(desc = 'test date',{
  expect_equal(formatDate('2016-11-23 11:23:34','1997-04-23'),'2016-11-23')
  expect_equal(formatDate('2016-11-23 11:23:34','04-23-1997'),'11-23-2016')
  expect_equal(formatDate('2016-11-23 11:23:34','04/23/1997'),'11/23/2016')
})

test_that(desc = 'test week',{
  expect_true(any(formatDate('2016-12-23 11:23:34','Wednesday')==c('星期五','Friday')))
  expect_true(any(formatDate('2016-12-23 11:23:34','Wed')==c('五','Fri')))
})


test_that(desc=='test ')
