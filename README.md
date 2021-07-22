# DNN
# Language: R
# Input: TXT
# Output: CSV
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: RBM

PluMA plugin to execute a Deep Neural Network (Nakamoto, 2017), implemented
as a Deep Belief Network (Hua et al, 2015) using the library of (Matzen, 2019): https://github.com/TimoMatzen/RBM

The provided example training data corresponds to the MNIST dataset (LeCun
and Cortes, 2010), also used by (Matzen, 2019) in their tutorial.

The plugin accepts as input a TXT file of tab-delimited keyword-value pairs:
x: training data, x-coordinates (CSV)
y: training data, y-coordinates (CSV)
iterations (int)
preiterations (int)
learningrate (real)
prelearningrate (real)
nodesX  (int)
nodesY  (int)
nodesZ  (int)
minibatch      (int)

