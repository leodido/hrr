#' Computes the number of terminal window columns.
#'
#' @param     set_option    whether to automatically set the R terminal width to the system terminal number of columns [default TRUE]
#' @return    Number of terminal window columns
#' @export
ncols <- function(set_option = TRUE) {
  if ((ncol <- Sys.getenv('COLUMNS')) != '') {
    ncol <- as.integer(ncol)
    if (set_option) {
      options(width = ncol) # FIXME: -1 ?
    }
  } else if (Sys.info()['sysname'] == 'Darwin') {
    # NOTE: I think this is a mac-only stty output format.
    # TODO: Need to prevent this from executing when under GUI
    output = tryCatch(system('stty -a', intern = TRUE), error = I)
    if (length(output) > 0) {
      ncol = as.integer(sub('.* ([0-9]+) column.*', '\\1', output[1]))
      if (is.finite(ncol) && ncol > 0 && set_option) {
        options(width = ncol) # FIXME: -1 ?
      }
    }
    rm(output)
  }

  ncol
}
