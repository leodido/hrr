\name{hr}
\alias{hr}
\title{Prints an horizontal rule.}
\usage{
hr(...)
}
\arguments{
  \item{...}{Symbols that compose the horizontal rule}
}
\value{
A list (invisibly)
}
\description{
This function, given a list of symbols, composes with them
an horizontal rule that fits the current with of the
terminal window. If nothing is passed to it, this function
prints the default character (see \code{hrr.symbol}) till
the end of your current terminal window.
}
\examples{
hr()
hr('*')
hr('-', '#', '-')
}

