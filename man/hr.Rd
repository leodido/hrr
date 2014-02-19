\name{hr}
\alias{hr}
\title{Print an horizontal rule.}
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
If nothing is passed to it, this function prints the
default character (see \code{hrr.symbol}) till the end of
your current terminal window.
}
\examples{
hr()
hr('*')
hr('-', '#', '-')
}

