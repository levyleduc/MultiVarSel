% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/whitening_test.R
\name{whitening_test}
\alias{whitening_test}
\title{This function provides the p-value of an adaptation of the Portmanteau statistic to test if there is some dependence in the rows of the residuals matrix given as an argument of the function.}
\usage{
whitening_test(residuals)
}
\arguments{
\item{residuals}{the residuals matrix of independant linear model on all the collumn of the response matrix}
}
\value{
the p-value of a whithening test. If the p-value is small (frequently lower than 0.05)
 it means that the hypothesis that each row of the  residuals matrix is a white noise is rejected.
}
\description{
This function provides the p-value of an adaptation of the Portmanteau statistic to test if there is some dependence in the rows of the residuals matrix given as an argument of the function.
}
\examples{
data(copals_camera)
Y=scale(Y[,1:100])
X <- model.matrix( ~ group + 0)
residuals=lm(as.matrix(Y)~X-1)$residuals
square_root_inv_hat_Sigma=whitening(residuals,"AR1",
                                    pAR=1,qMA=0)
}
