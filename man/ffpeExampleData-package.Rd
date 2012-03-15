\name{ffpeExampleData-package}
\alias{ffpeExampleData-package}
\alias{ffpeExampleData}
\docType{package}
\title{
Illumina DASL example microarray data
~~ package title ~~
}
\description{
A subset of GSE17565 (April et al. 2009) containing 32 FFPE samples of Burkitts Lymphoma and Breast Adenocarcinoma, with a dilution series in technical duplicate.
}
\details{
\tabular{ll}{
Package: \tab ffpeExampleData\cr
Type: \tab Package\cr
Version: \tab 1.0.0\cr
Date: \tab 2011-11-17\cr
License: \tab GPL (>2)\cr
}
  Downloaded from the GEO URL:
  
  http://www.ncbi.nlm.nih.gov/projects/geo/query/acc.cgi?acc=GSE17565 .

  Raw data were obtained from the supplemental file
  GSE17565_nonorm_nobkgd.txt.gz, and inserted into a lumibatch object
  using the lumi:lumiR command.  The metadata from GEO are also
  curated for ease of use.

Some analyses of this dataset are done in the ffpe Bioconductor package.

}
\author{

Levi Waldron <lwaldron@hsph.harvard.edu>

}

\references{

April C, Klotzle B, Royce T, Wickham-Garcia E et al. Whole-genome gene
  expression profiling of formalin-fixed, paraffin-embedded tissue
  samples. PLoS One 2009 Dec 3;4(12):e8162. PMID: 19997620
  
  Data from accession ID GSE17565 of the Gene Expression Omnibus

}

\examples{

library(lumi)
data(lumibatch.GSE17565)
meta.data <- pData(lumibatch.GSE17565)
expression.data <- exprs(lumibatch.GSE17565)
summary(meta.data)
boxplot(log2(expression.data))

}
