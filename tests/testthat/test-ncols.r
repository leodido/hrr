context('ncols')

cols <- Sys.getenv('COLUMNS')
term <- Sys.getenv('TERM')

test_that('uses COLUMNS env variable when is set (priority)', {
    Sys.setenv(COLUMNS = 10)

    expect_equal(ncols(), 10)
})

test_that('sets width option by default', {
    moptions <- mockery::mock()
    mockery::stub(ncols, 'options', moptions)

    ret <- ncols()

    mockery::expect_called(moptions, 1)
    margs <- mockery::mock_args(moptions)
    expect_equal(margs[[1]], list(width = ret))
})

test_that('uses default value when env variables not set', {
    Sys.setenv(COLUMNS = '')
    Sys.setenv(TERM = '')

    expect_equal(ncols(), getOption('width'))
})

test_that('tries to call tput when COLUMNS env variable not set', {
   Sys.setenv(COLUMNS = '')
   Sys.setenv(TERM = term)

   msystem2 <- mockery::mock()
   mockery::stub(ncols, 'system2', msystem2)

   ret <- ncols()

   mockery::expect_called(msystem2, 1)
   margs <- mockery::mock_args(msystem2)[[1]]
   expect_equal(margs[[1]], 'tput')
   expect_equal(margs[[2]], 'cols')
   expect_equal(margs$stdout, TRUE)
   expect_equal(margs$stderr, TRUE)
})