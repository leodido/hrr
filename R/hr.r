#' @title
#' Prints an horizontal rule.
#'
#' @description
#' \code{hr}, given a list of symbols, composes with them an horizontal rule that fits the current width of the terminal window.
#' If nothing is passed to it, this function prints the default character (see \code{hrr.symbol}) till the end of your current terminal window.
#'
#' @param       ... 		Symbols that compose the horizontal rule
#' @return      A list (invisibly)
#' @examples
#' hr()
#' hr('*')
#' hr('-', '#', '-')
#' @export
hr <- function(...) {
  symbols <- list(...)
  if (length(symbols) == 0) {
  	symbols <- list(getOption('hrr.symbol'))
  }
  ncols <- ncols()
  invisible(sapply(symbols, function(symbol) {
    repeat_count <- as.integer(ceiling(as.double(ncols) / nchar(symbol)))
    output <- paste(rep_len(symbol, repeat_count), collapse = '')
    cat(substr(output, 1, ncols), sep = '', '\n')
  }))
}
