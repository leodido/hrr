# hrr

Horizontal rule for R language

## Installation

Because `hrr` is not yet available on CRAN you can install it via `devtools` package ([link](https://github.com/hadley/devtools)).

```r
library(devtools)
install_github('hrr', user = 'leodido')
```

## How to use it?

```r
library(hrr)
hr()
################################## # Till the end of your terminal window
hr('*')
********************************** # Till the end of your terminal window
hr('-', '#', '-')
----------------------------------
##################################
----------------------------------
hr('-#-', '-', '-#-')
-#--#--#--#--#--#--#--#--#--#--#--
----------------------------------
-#--#--#--#--#--#--#--#--#--#--#--
```

### From the command-line:

_TODO_

## Requirements

The only requirements are the R language (tested in version 3.0.2) and `devtools` package (unless you want to install `hrr` from source).
