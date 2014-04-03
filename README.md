 hrr [![Analytics](https://ga-beacon.appspot.com/UA-49657176-1/hrr)](https://github.com/igrigorik/ga-beacon)
======

Horizontal rule for R language.

## Why?

Because the horizontal rules are the easiest way to split your output into blocks.

_Inspired by [hr for bash](https://github.com/LuRsT/hr)_.

## Installation

You can install `hrr` via CRAN.

E.g.,

```r
install.packages('hrr', repos='http://cran.r-project.org')
```

Otherwise, if you prefer, you can install it via `devtools` package ([link](https://github.com/hadley/devtools)).

```r
library(devtools)
install_github('hrr', username = 'leodido')
```

## How to use it?

Load it.

```r
library(hrr)
```

Simply call the `hr()` function.

It will print the the default symbol (i.e., `#`) **till the end of your terminal window**.

```r
hr()
#################################### ...
```

Or define your own symbol.

```r
hr('*')
************************************ ...
```

You can also make _beautiful ASCII patterns_.

```r
hr('-', '#', '-')
------------------------------------
####################################
------------------------------------

hr('-#-', '-', '-#-')
-#--#--#--#--#--#--#--#--#--#--#--#-
------------------------------------
-#--#--#--#--#--#--#--#--#--#--#--#-
```

### From the command-line:

_TODO_

## Requirements

The only requirement is the R language (tested in version 3.0.*).

## License

This package is released under the terms of the [MIT license](http://opensource.org/licenses/mit-license.html).
