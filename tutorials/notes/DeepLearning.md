# Deep Learning

## Overview 

- Representation similarity analysis (RSA) is used to compare the activity of artificial neural networks to neural activity at different levels of scale. Hence, RSA can help us understand brain architecture and learning rules.

- A decoding model can help us estimate how much information about a variable is presented in a given brain region. neural activity -> external correlate.

- An encoding model is intended to mimic the same transformation the brain performs to translate input variables to neural activity. Hence, an encoding model can help us understand how the brain represents information. external correlate -> neural activity.

Neural taskonomy: What kinds of datasets and tasks create neural networks that best approximate the brain.

## Intro

- Aude Oliva

- Flashlight: filter/neuron/kernel
- Sliding motion: convolution
- Illuminated region: receptive field 

## Tutorial 1

- Carsen Stringer

- Reduced-rank regression (useful to regularize regression model) is equivalent to a linear network with one hidden layer (with width M < input N).

`loss_fn = nn.MSELoss()`

`optimizer = optim.SGD(net.parameters, lr=.001)`

`optimizer.zero_grad()` - Clear gradients

`loss.backward()` Automatic differentiation, used to compute the gradients.

`optimizer.step()` - update the weights.

## Tutorial 2

local receptive fields + pooling -> translation invariance.

gabor filter have a positive session next to a negative session in the kernel.

same padding: to get the same output size as the input size in a convolution it is necessary to pad the input by half the filter size on each side.

$C_out$ is the amount of neurons!

## Tutorial 3

- Yalda Mohsenzadeh

**normative** encoding model: optimized (optimal for the specified architecture) for a specific behavioral task.

Pooling: stabilizes w.r.t. small translations.


Representation dissimilarity matrix (RDM): dissimilarity measure between each pair of stimuli.

Dissimilarity measure example: 1 - correlation coefficient.

Representational Similarity Analysis (RSA): similarity measure among RDMs.