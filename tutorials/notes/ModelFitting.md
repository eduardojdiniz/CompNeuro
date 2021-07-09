# Model Fitting

Jan Drugowitsch

## Goals

Fitting and comparing any type of models.

Fit linear regression models.

## Intro

> Confront models with experimental data
> - Does my model capture the behavior of my participant, or its neural activity?
> - Does the data support my model against alternatives?
> - Which component in the model is needed?
> - Do parameters in the model vary systematically beteween two subject populations?

Statistical and data analysis is the process of either explicitly or implicitly fitting and comparing models to data.

Linear regression models are those when the dependent variable is continuous (e.g., BOLD activity).

Model fitting is crucial to test hypothesis about "how" models. The typical workflow is to formulate a computational (stochastic) model that encapsulates your hypothesis, and then control model(s). Then you fit each model to experimental data. Simulating the fitted models allows validating that your model indeed capture the effects of interest in the data. Then, you use model comparison techniques to tell which one of your main or control model(s) better describe the data. That is, evaluate how good a model is wrt data and/or other models. Also, it's possible to assess whether some parameter in your model changes between experimental conditions or subject populations.

How to evaluate model fit to the data?
    - **validation**: generate new data and see how does that compare to the real data; check goodness-of-fit on held-out data.
    - **prediction**: behavior outside of data range.
    - **intepret** the model parameters, e.g. ablation studies.
    - **compare** fit across different models.


Linear models are models that are linear in the parameters $\theta$, but not necessarily linear in the inputs $x$. Is it possible to fit the powers of $x$ as well?

Two philosophies for fitting models
    1 - Models as functions $y = f(x; \theta)$. The aim is to find model that minimize errors.
    2 - Models as generators $y_{measured} = f(x; \theta) + \eta$, where $\eta$ is noise from some distribuiton. The aim is to find models that assign high probability to the data (maximizing likelihood), i.e. data $\approx$ model prediction + noise.

The likelihood function $p(data|parameters \theta)$ is over the data and not the parameters because it does not sum to 1 across all possible parameters' values.

Maximizing likelihood with Gaussian noise is equivalent to minimizing mean squared error. In general, there is a duality in maximizing likelihoods and minimizing errors. Maximizing a likelihood is equivalent to minimizing some error function, where the shape of this error function depends of the noise profile.

Gaussian noise makes the model parameters sensitive to outliers.

Revisit slide 18. Conclusions: Log-likelihood with Gaussian noise is the single most important statistical model. Likelihood is quadratic in **$\theta$** (concave function), which makes easy to find best-fitting parameter. There is an analytic expression for the maximum-likelihood estimate.

Parameter uncertainty
    - limited data; multiple parameter values $\theta$ might explain the data equally well.

Computing uncertainty allows us to determine how well does data constrain parameters and if parameters are signifcantly non-zero.

In general (apply for both linear and non-linear models), parameter uncertainty can be assessed through *bootstrapping*.

Bias-variance trade-off. See graph on slide 24.
    - High bias with low model complexity: systematic deviaton from structure underlying data, also know as underfitting.
    - High variance with high model complexity: capturing variability beyond the structure underlying data (i.e., noise), also know as overfitting.
    - Total error = bias + variance.
    - Best model is the one that balances bias and variance.

Two philosophies for comparing models
    - Goodness-of-fit (popular in statistics) - Computer likelihood of fitted model, and correct for number of parameters, then compare goodness of fits. Good models use few parameters to produce good fits. Example: Akaike Information Criterio (AIC), see slide 26, BIC, DIC, etc. Those differ in how they measure model complexity. Bayesian model comparison implicitly penalizes model complexity by averaging over many model parameters.
    - Cross-validation (popular in machine learning) - Fit model to some training data, then check how well it predicts the test data.

## Tutorial 1

Linear regression makes predictions about the linear relationship between the input variable and the output variable.

Linear least squares regression uses mean squared error (MSE) as its objective function.

Solving the minimization of MSE analytically we say we are solving the normal equations.

## Tutorial 2

Likelihood: which $\theta$ leads to the Gaussian distribution that most likely matches the data points $\{x,y\}$?

Joint probability: the likelihood that all data points are explained by our parameterization.

We can also see $\mathrm{p}(\mathrm{y} | \mathrm{x}, \theta)$ as a function of $x$. This is the stimulus likelihood function, and it is useful in case we want to decode the input $x$ from observed responses $y$. This is what is relevant from the point of view of a neuron that does not have access to the outside world and tries to infer what's out there from the responses of other neurons!

## Tutorial 3

It is better to have a distribuition than a point-wise estimate.

Bootstrapping is a widely applicable method to assess confidence/uncertainty about estimated parameters by resampling.

To compute confidence intervals from our bootstrapped estimates we compute percentiles from the empirical distribution of bootstrapped estimates.

## Tutorial 4

simple(univariate)/multiple(multivariate) linear model
linear/multilinear regression
general linear regression
polynomial regression: extension of linear regression.
linear/ordinary least squares estimator.

design matrix: matrix where each row is a data vector.

With a polynomial fit we loose the interpretation of the parameters? Not really, you fit each feature to each power!

## TUtorial 5

Bias: systematic deviation from structure underlying data
Variance: capturing variability in predictions from models trained on different datasets
generalization error is how well the selected model performs on unseen data.

Bias and variance are very important concepts in modern machine learning, but it has recently been observed that they do not necessarily trade off (see for example the phenomenon and theory of "double descent")

## Tutorial 6

One random split could result in a biased data training-test distribution

K-fold cross validation
leave-one out cross validation = K-fold cross validation when K equals the number of data points.
A common used method for model selection is to ask how well the model predicts new data that it hasn't seen yet. But we don't want to use test data to do this, otherwise that would mean using it during the training process! One approach is to use another kind of held-out data which we call validation data: we do not fit the model with this data but we use it to select our best model.

Sometimes people use k-fold cross validation to choose between different models/parameters to then apply to held-out test data and sometimes people report the averaged error on the held-out subsets as the model performance. If you are doing the former (using k-fold cross validation for model selection), you must report performance on held-out test data!

An important consideration in the choice of model selection method are the relevant biases. If we just fit using MSE on training data, we will generally find that fits get better as we add more parameters because the model will overfit the data. When using cross-validation, the bias is the other way around. Models with more parameters are more affected by variance so cross-validation will generally prefer models with fewer parameters.
