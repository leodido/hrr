# hrr

Horizontal rule for R language

## Installation

Because `hrr` is not yet available on CRAN you can install it via `devtools` package ([link](https://github.com/hadley/devtools)).

```r
library(devtools)
install_github('hrr', user = 'leodido')
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

The only requirements are the R language (tested in version 3.0.2) and `devtools` package (unless you want to install `hrr` from source).
