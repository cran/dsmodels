% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dsrange.R
\name{dsrange}
\alias{dsrange}
\title{Range of inputs for a model}
\usage{
dsrange(x, y, discretize = 0, renderCount = 101, axes = TRUE,
  frame.plot = TRUE, ...)
}
\arguments{
\item{x}{Specifies the minimum and maximum for the x axis.
If only one value is specified, it is used as the maximum, and the minimum will default to 0.
If a collection of values are provided, the minimum and maximum are used as the range.}

\item{y}{Specifies the minimum and maximum for the y axis.
If only one value is specified, it is used as the maximum, and the minimum will default to 0.
If a collection of values are provided, the minimum and maximum are used as the range.}

\item{discretize}{If a value is provided, the field is discretized into an array of points. The value
specifies the distance between each point.
This becomes the default when displaying \code{\link{dsarrows}} or \code{\link{dsdots}}.
The number of points in the field is defined by:}

\item{renderCount}{The number of points that a curve will be computed at when being
displayed. Default 101.}

\item{axes}{If \code{FALSE}, the axes will not be drawn. Defaults to \code{TRUE}.}

\item{frame.plot}{If \code{FALSE}, the frame of the plot will not be drawn. Defaults to \code{TRUE}.
\deqn{(xmax-xmin+1)(ymax-ymin+1)/discretize.}{ascii}}

\item{...}{Further fields for the dsrange object.}
}
\description{
\code{dsrange} creates a discrete or continuous
range for the model to be computed over. Points that fall outside the range will be
discarded in all features.
}
\details{
You may either specify a numeric x and y, in which case 0 is the lower bound and that value is
the upper bound; or a range of values, in which case the min and the max of the range will be used.
To specify a range from \code{min} to \code{max}, use either \code{c(min,max)} or
\code{min:max}.
}
\examples{
fun <- function(X,Y) {
  list(
    X/exp(Y),
    Y/exp(X)
  )
}
model <- dsmodel(fun, title = "A range with no features!")
#Since no features are added, only the area and title are displayed.
model + dsrange(3, 3, discretize = .09)
}
\seealso{
\code{\link{dsmodel}}

\code{\link{dsarrows}}

\code{\link{dsdots}}
}
