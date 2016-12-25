context("test format date and time")

test_that(desc = 'test date',{
expect_equal(formatDate('2016-11-23 11:23:34','1997-04-23'),'2016-11-23')
})
