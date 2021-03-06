% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/caseIIIR.R
\name{caseIIIR}
\alias{caseIIIR}
\title{Corrects correlations using Case III-R}
\usage{
caseIIIR(data.matrix = NULL, rtp, rsp, rts, SR)
}
\arguments{
\item{data.matrix}{a data matrix with rows representing observations and
columns representing variables. Note: no observations should be present when
using case III-R.}

\item{rtp}{the restricted correlation between t (the predictor variable) and
p (the outcome variable).}

\item{rsp}{the restricted correlation between s (the suitability variable)
and p (the outcome variable).}

\item{rts}{the restricted correlation between t (the predictor variable) and
s (the suitability variable).}

\item{SR}{the selection ratio (i.e., the proportion of applicants who were
selected)}
}
\value{
a scalar that is the unbiased estimate of the correlation between T
and P.
}
\description{
Using Fife, Hunter, and Mendoza's (2013) Case III-R correction,
\code{caseIIIR} corrects the tp correlation for direct restriction on x (and
by implication, indirect restriction on x)
}
\details{
later
}
\examples{

	# load example data
data(selection.example.data)
	# give me only those rows that have full information
new.dat = selection.example.data[!is.na(selection.example.data$Performance),]

	# correct assuming direct selection on R, indirect on biodata, and a dv of performance
corrected = caseIIIR(data.matrix = new.dat, SR=.5)	

corrected = caseIIIR(rtp=.4, rsp=.3, rts=.5, SR=.5)	

}
\author{
Dustin Fife
}
\references{
Thorndike, R. L. (1949). Personnel selection: Test and
measurement techniques. Oxford, England: Wiley.

Pearson, K. (1903). Mathematical contributions to the theory of evolution.
XI. On the influence of natural selection on the variability and correlation
of organs. Philosophical Transactions of the Royal Society of London. Series
A, Containing Papers of a Mathematical or Physical Character, 200, 1-66.
}
\seealso{
\code{\link{caseIV}}, \code{\link{caseIII}}, \code{\link{em}},
\code{\link{rel.correction}}
}

