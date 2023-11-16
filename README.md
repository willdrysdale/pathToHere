
# pathToHere

<!-- badges: start -->
<!-- badges: end -->

pathToHere provides a RStudio addin that takes a file path string and replaces it with a call to here(). 

## Installation

You can install the development version of pathToHere from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("willdrysdale/pathToHere")
```

## Example

Once pathToHere is installed, it can be bound to a keyboard shortcut by following the instructions [here](https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts). (I like `ctrl + shift + H)

Then, highlighting the following code and pressing the shortcut will convert it into a call to `here::here()`

This:
``` r
"path/to/my/file"

```
becomes:

``` r
here::here('path','to','my','file')

```


