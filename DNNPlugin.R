library(RBM)

input <- function(inputfile) {
  parameters <- read.table(inputfile, as.is=T);
  rownames(parameters) <- parameters[,1]
  trainX <<- read.csv(toString(parameters["x", 2]))
  trainY <<- read.csv(toString(parameters["y", 2]))
  trainX <<- trainX[,-1]
  trainY <<- trainY[,-1]
  iter <<- as.integer(parameters["iterations", 2])
  preiter <<- as.integer(parameters["preiterations", 2])
  learningrate <<- as.numeric(parameters["learningrate", 2])
  prelearningrate <<- as.numeric(parameters["prelearningrate", 2])
  nodesX <<- as.integer(parameters["nodesX", 2])
  nodesY <<- as.integer(parameters["nodesY", 2])
  nodesZ <<- as.integer(parameters["nodesZ", 2])
  minibatch <<- as.integer(parameters["minibatch", 2])
}

run <- function() {
modDBN <<- DBN(trainX, trainY,n.iter = iter, nodes = c(nodesX, nodesY, nodesZ), learning.rate = learningrate,
size.minibatch = minibatch, n.iter.pre = preiter, learning.rate.pre = prelearningrate, verbose = FALSE)
}

output <- function(outputfile) {
   write.csv(modDBN[1], outputfile)
}
