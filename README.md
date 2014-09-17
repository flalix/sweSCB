sweSCB v0.3.5
=======

## Introduction
sweSCB is an R package to interface with the API of Statistics Sweden, a.k.a. SCB. The package is a part of the international R open government data and computation project [rOpenGov](http://ropengov.github.io/).

The package offers methods to fetch information about the data hierarchy stored behind the API; extract metadata; fetch actual data; and clean up the results.

The source code for this project is entirely free and is licensed under the [AGPLv3 license](http://www.gnu.org/licenses/agpl-3.0.html) (also included with this package). This means that you are free to use, distribute and modify the code as you see fit. However, any code you add to this code _must_ also be released under the same license or any compatible and equally free license, as-is without any modifications. Freedom is a precious thing and can only be safeguarded by openness, sharing, and a [copyleft](http://en.wikipedia.org/wiki/Copyleft) attitude towards intellectual property.

## New in version 0.4.0
Version 0.4.0 was released on 7th of September, 2014.  

- Rebuild based on fully on package pxweb.

## A brief note on using the SCB API
The SCB API is a RESTful API. The data consists of a metadata part and a data part. The metadata part is structured in a hierarchical node tree, where each node contains information about any (sub-)nodes that are below it in the tree structure or, if the nodes is at the bottom of the tree structure, the data referenced by the node as well as what dimensions are available for the data at that subnode.

## Prerequisites for Fedora 20
## Run following Terminal commands before installing sweSCB v0.4.0:
```bash
sudo yum update
sudo yum install curl curl-devel
```

## Prerequisites for Ubuntu 14.04 LTS/Linux Mint
## Run following Terminal commands before installing sweSCB v0.4.0:
```bash
sudo apt-get update
sudo apt-get install libcurl4-openssl-dev
```

## Installation instructions for sweSCB v0.4.0
Use the `devtools` package for easy installation of the latest version from GitHub:
```r
install.packages("devtools")
devtools::install_github("sweSCB","LCHansson")
library(sweSCB)
```

The current package on CRAN is v.0.3.5. This version can be downloaded as follows:
```r
install.packages("sweSCB")
library(sweSCB)
```

## Easy access to SCB data
Data in the SCB API is structured in a data tree and a wrapper function `findSCBdata()` has been written for easy navigation and access to data through the SCB api. To get data from SCB simply run the function from the R command line:
```r
minData <- find_scb_data()
```
The function will automatically print (if requested) the code needed to reproduce the access to SCB data.

## A last word of caution
The SCB web API seems to still be in its early stages, and data quality is sometimes not perfect. If you find an obvious error in your data and it's not obvious that this is because of programming errors in `sweSCB`, please consider filing a bug report to the developers at SCB. Follow [this link](http://www.scb.se/api) to find information on how to contact them.

## Further examples
Further examples of advanced package usage are included in the "examples" folder installed with this package. To locate this folder on your system, run `system.file(package = "sweSCB")` from the R terminal.

## Development information
This package is still in its early development stages. The package can already be used in its present form to construct a simple menu system, to mine the SCB API for data, or to discover new data. However, work is needed to improve usability and widen the range of possible applications. You are invited to contribute to package development in any way you can and want to. You will, of course, be given due credit for your work.

## Reporting bugs
Please use the GitHub issue tracker for reporting bugs and making further feature requests.

IMPORTANT: When submitting a bug, you can make the lives of the developers easier by submitting the following information along with your bug report:
- The output of `sessionInfo()`
- The output of `packageVersion("sweSCB")`

## Open source license
Please note that all source code contained in this project is open source licensed under the Affero Gnu Public License v3. This means that you are allowed to modify, use, and spread the source code freely withoug any permission from the author. HOWEVER, this source code and ANY derivatives thereof MUST be licensed with the same open source license. For further information about the AGPLv3, see LICENSE included with the source code of this package.
