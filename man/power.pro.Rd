\name{power.pro}
\alias{power.pro}
\title{Power-Proportion Scaling}
\description{Adjust variables in a dataframe according to their power relationship (allometric scaling)}
\usage{power.pro(df, var.adj, var.pro, a.start = 1, b.start = 1, restart.ab = TRUE, max.restart=1000, if.fail=c(1,0), rescale = TRUE, save.params = FALSE)}
\arguments{
  \item{df}{Data.frame object containing the values to adjust and variable to use for adjustment}
  \item{var.adj}{a character vector of names of variables that you want adjusted, e.g., c("frontal_volume", "amygdala_volume", "caudate_volume")}
  \item{var.pro}{a character vector of length 1 with the name of the variable to use for adjustment, e.g., "ICV"}
  \item{a.start}{starting value for linear, alpha, parameter. default is 1}
  \item{b.start}{starting value for linear, beta, parameter. default is 1}
  \item{restart.ab}{logical indicating whether or not to retry the non-linear fit on failure, default=TRUE}
  \item{max.restart}{number of times to attempt re-initiliazing parameters}
  \item{if.fail}{values to use on failure, default=c(1,0) [alpha,beta] results in no adjustment; c(1,1) results in linear proportional adjustment}
  \item{rescale}{logical indicating whether or not to rescale adjusted variables back to the original range of the data, default=TRUE}
  \item{save.params}{logical indicating whether or not to output parameters, default=FALSE, see below for output specification}
}
\details{Adjust variables according to power relationships (allometric scaling). Method: We fit a non-linear model, DV is the dependent varaiable(s) or variable(s) you want to adjust, and IV is the indepent variable or the variable whose power relationship with the DV you want removed. DV = alpha*IV^beta. Once estimates for $\alpha$ and $\beta$ have been found, these parameters are used to adjust your variable(s): DV'=DV/(IV^beta)}
\value{If save.params=FALSE, output is the input dataframe, with adjusted variables. If save.params=TRUE, output is a list containing parameters and adjusted data as output$df}
\author{Timothy R. Koscik <timkoscik+pwrpro@gmail.com>}