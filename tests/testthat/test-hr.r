context('hr')

test_that('uses default symbol', {
    sym <- getOption('hrr.symbol')

    mcat <- mockery::mock()
    mockery::stub(hr, 'cat', mcat)

    hr()

    mockery::expect_called(mcat, 1)
    margs <- mockery::mock_args(mcat)[[1]] # only one horizontal rule ...
    expect_equal(nchar(margs[[1]]), ncols())
    expect_equal(margs[[1]], paste(rep_len(sym, ncols()), collapse = ''))
})

test_that('substitutes whitespaces with default symbol', {
    sym <- getOption('hrr.symbol')

    mcat <- mockery::mock()
    mockery::stub(hr, 'cat', mcat)

    hr(' ')

    mockery::expect_called(mcat, 1)
    margs <- mockery::mock_args(mcat)[[1]] # only one horizontal rule ...
    expect_equal(nchar(margs[[1]]), ncols())
    expect_equal(margs[[1]], paste(rep_len(sym, ncols()), collapse = ''))
})

test_that('can print more horizonatal rules each one composed by more characters', {
    symbols <- list('&£$', '*-')

    msapply <- mockery::mock()
    mockery::stub(hr, 'sapply', msapply)
    
    do.call(hr, symbols)

    mockery::expect_called(msapply, 1)
    margs <- mockery::mock_args(msapply)
    expect_equal(margs[[1]][[1]], symbols)
})

test_that('prints horizontal rules', {
    symbols <- list('&£$', '*-')

    mcat <- mockery::mock()
    mockery::stub(hr, 'cat', mcat)    

    do.call(hr, symbols)

    mockery::expect_called(mcat, length(symbols))
    margs <- mockery::mock_args(mcat)
    for (i in 1:length(symbols)) {
        output <- margs[[i]][[1]]
        expect_equal(nchar(output), ncols())

        symbol <- symbols[[i]]
        rcount <- as.integer(ceiling(as.double(ncols()) / nchar(symbol)))
        expect_equal(output, paste(rep_len(symbols[[i]], rcount), collapse = ''))
    }
})