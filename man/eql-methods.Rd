\name{eql-methods}
\docType{methods}
\alias{eql}
\alias{eql,db.obj,db.obj-method}
\title{Test if two objects point to the same table}
\description{
This function checks if two \code{\linkS4class{db.obj}} objects are the
equivalent.  For objects of class \code{\linkS4class{db.data.frame}},
they need to have the same associated table.
For objects of other types, they need to have identical expressions and the same associated table.
}
\usage{
\S4method{eql}{db.obj,db.obj}(e1,e2)
}

\arguments{
  \item{e1, e2}{
 The signature of the method. Both arguments are \code{\linkS4class{db.obj}} objects to be checked for equality.   
}
}
\details{
Objects of type \code{\linkS4class{db.data.frame}} are considered equal
if they have the same \code{\link{content}} representation, and their
associated tables have the same name, connected datbase, and type.  Objects of other types derived from \code{db.obj} are considered equal if they have the same values for \code{\link{content}} representation, \code{@.source}, \code{@.parent}, \code{@.expression}, \code{@.where}, \code{@.conn.id}, \code{@.col.data_type}, \code{@.is.factor} and \code{@.col.name}.  Two objects of different types are always considered not equal.  
}
\value{
A logical.  Returns \code{TRUE} is the objects are equal.  
}
\author{
  Author: Predictive Analytics Team at Pivotal Inc. \email{user@madlib.net}
  
  Maintainer: Hai Qian \email{hqian@gopivotal.com}, Predictive Analytics Team at Pivotal
  Inc. \email{user@madlib.net}
} 

\seealso{
  \code{\link{preview}} Displays the actual data in a \code{\linkS4class{db.obj}} object.
}
\examples{
\dontrun{

## Suppose that a valid connection with ID 1 exists

## create a table from the example data.frame "abalone"
x <- db.data.frame('abalone', key = 'id') # use default connection 1

y <- db.data.frame('abalone')

## Check for equality
eql(x,y) # This returns true

## create a db.Rquery object
z <- x[,] # x is a db.data.frame object, but z is not

eql(x,z) # This returns false
}
}

\keyword{database}
\keyword{utility}

