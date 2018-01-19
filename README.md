[![CRAN](https://img.shields.io/cran/v/hrr.svg?style=for-the-badge)](https://cran.r-project.org/web/packages/hrr/index.html) [![TravisCI Build Status](https://img.shields.io/travis/leodido/hrr/master.svg?style=for-the-badge)](https://travis-ci.org/leodido/go-urn) [![AppVeyor Build Status](https://img.shields.io/appveyor/ci/leodido/hrr/master.svg?style=for-the-badge)](https://ci.appveyor.com/leodido/hrr) [![Coverage](https://img.shields.io/codecov/c/github/leodido/hrr/master.svg?style=for-the-badge)](https://codecov.io/github/leodido/hrr?branch=master)

> **H**orizontal **r**ule for **R** language.

## Why?

Because the horizontal rules are the easiest way to split your output into blocks.

Inspired by [hr for bash](https://github.com/LuRsT/hr).

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

You can also create beautiful ASCII patterns.

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

TBD.

## Requirements

The only requirement is the R language (tested in version 3.0.*).

## License

This package is released under the terms of the [MIT license](http://opensource.org/licenses/mit-license.html).

---

[![Analytics](https://ga-beacon.appspot.com/UA-49657176-1/hrr?flat)](https://github.com/igrigorik/ga-beacon)
