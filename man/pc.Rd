\name{pc}
\alias{pc}
\title{PC ("Peter/Clark") algorithm}
\description{
 \code{pc} is the PC ("Peter/Clark") algorithm.
}
\usage{
pc(df, continuous = TRUE, depth = 3, aggressivelyPreventCycles = FALSE, 
	falseDiscoveryRate = FALSE, significance = 0.05,
    verbose = FALSE, java.parameters = NULL, priorKnowledge = NULL)
}
\arguments{
  \item{df}{ Data Frame of the dataset. }
  \item{continuous}{ boolean indicating the dataset is continuous.  
  \code{continuous} is \code{TRUE} by default. }
  \item{depth}{ integer indicating a number of nodes conditioned on in the search. 
  It ranges from -1 for unlimited nodes, otherwise a number 
  >= 0. By default, \code{depth}=3. }
  \item{aggressivelyPreventCycles}{ boolean indicating if cycles are to be aggressively prevented. 
  May be expensive for large graphs (but also useful for large graphs).
  \code{aggressivelyPreventCycles} is \code{FALSE} by default. }
  \item{falseDiscoveryRate}{ boolean indicating if the algorithm should be run with False Discovery Rate tests.
  \code{falseDiscoveryRate} is \code{FALSE} by default. }
  \item{verbose}{ boolean indicating whether or not if verbose output should 
  be printed.  \code{verbose} is \code{FALSE} by default. }
  \item{java.parameters}{ string indicating an optional parameters for JVM. 
  For example, java.parameters = "-Xmx1024M". By default, 
  \code{java.parameters}=\code{NULL}. }
  \item{priorKnowledge}{ object indicating a prior knowledge of the graph. By default, 
  \code{priorKnowledge}=\code{NULL}. }
}
\details{
This method implements the PC ("Peter/Clark") algorithm, as specified in Chapter 6 of Spirtes, Glymour, and Scheines, "Causation, Prediction, and Search," 2nd edition, with a modified rule set in step D due to Chris Meek. For the modified rule set, see Chris Meek (1995), "Causal inference and causal explanation with background knowledge."

More detail about pc implementation, please visit \href{http://cmu-phil.github.io/tetrad/tetrad-lib-apidocs/edu/cmu/tetrad/search/Pc.html}{the java documentation}.
}
\value{
A list containing the pc's parameters, the input dataset, the result's nodes, 
the result's edges, and the graphNEL causal graph result.
}
\examples{
data("audiology")
#Compute pc
pc <- pc(df=audiology, continuous = FALSE, depth = -1, verbose = TRUE)
pc$parameters #Show the pc's parameters
pc$datasets #Show the dataset
pc$nodes #Show the result's nodes
pc$edges #Show the result's edges
}
\keyword{pc}
\keyword{causal graphs}
