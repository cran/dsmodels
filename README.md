dsmodels
------------
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/dsmodels)](https://cran.r-project.org/package=dsmodels)
Contact: <a href="mailto:cstein1@trinity.edu">cstein1@trinity.edu</a> , <a href="mailto:sfogarty@trinity.edu">sfogarty@trinity.edu</a>

<TT>dsmodels</TT> is an expressive language for visualizing and analyzing two-dimensional dynamical
systems. Scripts are built from a model encapsulating the dynamical system, to which other objects
are composed. Components include: visualization of the entire range; user-defined curves and points;
iterated images with color gradiants; and colored regions.  The language can also approximate
attractors and their basins through simulation.  

    library(dsmodels)
    model <- dsmodel(function(x,y) {
      list( x*exp(2.6-x-6.45/(1+4.5*x)),
            y*exp(2.6-y-0.15*x-6.25/(1+4.5*y)) )
    })
    model + dsrange(0:3,0:3,discretize = 0.1, frame.plot = FALSE, axes = FALSE)
    model + dsarrows(head.length=0.15)
    model + simattractors() + simbasins(discretize = 0.01)

<center>
<img src="http://cs.trinity.edu/~sfogarty/exampleImage.png" alt="Visual generated by example code" style="width:400px;height:400px;">
</center>

Installation
------------

To install <TT>dsmodels</TT>, simply type into your R console the following line:

     install.packages("dsmodels") 

To install the latest version (1.1) from GitHub:
     
      # install.packages("devtools")
      devtools::install_github("Trinity-Automata-Research/dsmodels")

<br>
<a href = http://www.cs.trinity.edu/~sfogarty/dsmodels/index.html>Documentation</a> for <TT>dsmodels</TT>.
