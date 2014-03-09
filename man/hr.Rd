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
A list (invisibly).
}
\description{
\code{hr}, given a list of symbols, composes with them an
horizontal rule that fits the current width of the terminal
window. If nothing is passed to it, this function prints
the default character (see \code{hrr.symbol} option) till
the end of your current terminal window. The same happens
if symbol is an empty string or a string containing only
whitespaces.
}
\examples{
hr()
hr('*')
hr('-', '#', '-')
hr('', '?', '   ')
}

