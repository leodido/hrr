#' Print an horizontal rule.
#'
#'
#'
#' @param       ...         ...
#' @return      A list (invisibly)
#' @export
hr <- function(...) {
  symbols <- list(...)
  ncols <- ncols()
  invisible(sapply(symbols, function(symbol) {
    repeat_count <- as.integer(ceiling(as.double(ncols) / nchar(symbol)))
    output <- paste(rep_len(symbol, repeat_count), collapse = '')
    cat(substr(output, 1, ncols), sep = '', '\n')
  }))
}
