#' @title
#' Computes the maximum width of terminal window.
#'
#' @description
#' \code{\link{ncols}} detects the maximum number of columns of the current terminal window.
#' Note that columns are normally the same as characters except in CJK languages.
#'
#' @param     set_option    whether to automatically enforce the R terminal width to the system terminal maximum number of columns [default \code{TRUE}]
#' @return    The number of terminal window columns.
#' @export
ncols <- function(set_option = TRUE) {
  # default/fallback
  ncol <- getOption('width')

  cols <- Sys.getenv('COLUMNS')
  if (nzchar(cols)) {
    ncol <- as.integer(cols)
  } else if (nzchar(Sys.getenv('TERM'))) {
    output <- tryCatch(system2('tput', 'cols', stdout = TRUE, stderr = TRUE))
    if (!is.null(output) && is.null(attr(output, 'status'))) {
      temp <- as.integer(sub('([0-9]+)', '\\1', output[1]))
      if (is.finite(temp) && temp > 0) {
        ncol <- temp
      }
    }
    rm(output)
  }

  if (set_option) {
    options(width = ncol)
  }
  return(ncol)
}
