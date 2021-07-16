# Generalized Linear Models

## Intro

Cristina Savin

Encoding: What features of the sensory inputs does a neuron care about? stimulus, x (e.g., pixels on the screen) --> neural response, r (e.g., discrete counts)
    - Functional connectivity: other neurons, x --> neural response, r
Decoding: Which features of the neural response drive behavior? neural responses, r --> decision, y

See slice 6 block diagram.

GLM: **x** (multidimensional) --> linear filter $/theta$ --> scalar --> nonlinearity --> add noise (has to be from an exponential family) --> y

GLM are not linear models because of the nonlinearity block.

Linear regression
    - Output type: real values
    - Likelihood (noise): Gaussian
    - Nonlinearity: identity
Poisson GLM
    - Output type: discrete counts
    - Likelihood (noise): Poisson
    - Nonlinearity: exponential
Logistic regression
    - Output type: binary
    - Likelihood (noise): Bernoulli
    - Nonlinearity: logistic

We use maximum likelihood estimation to learn the linear filter!

MLE gives us the best fit on training data, but does it give the best model? Not necessarily!


