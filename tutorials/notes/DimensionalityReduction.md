# Dimensionality Reduction

# Tutorial 1

Alex Cayco Gajic

Difference from dimensionality reduction and model fitting.

The goal of PCA is to find the direction of correlation (maximum variance)

Variance = Individual features; spread on individual axis.

Covariance = mixture of features; spread on joint axis.

Data projection and geometry 

Covariance is a relative measure, whereas the total variance is invariant to change of basis. We can transfer variance from one variable to another by changing basis and that is quantified by covariance, but the total variance is still the same.

Projected variance is largest when basis is aligned with covariance direction.

## Tutorial 2

Dimensionality reduction: go from N samples x X variables to N samples x K features, where K << X.

Stacked eigenvectors are called "loadings" or "weights" and the projected data is called "scores" or "latent variables"

Why we use the covariance matrix?

Extrinsic dimensionality: number of variables we are observing

Intrinsic dimensionality: number of degrees of freedom. Fractal dimensionality!

## Tutorial 3

Scree plot: plot of eigenvalues by component.

Total variance explained plot: Variance explained by component. Add a threshold.

PCA has two equivalent formulations: Minimize reconstructing error or maximize the projected variance.

## Tutorial 4

Latent subspace

Latent representation

PCA can be used for compression, denoising, whitening, and visualization.

Linear dimensionality reduction: linear transformation to a low-dimensional space.

Probabilistic PCA (PPCA): Gaussian with same variance in all directions.

Factor analysis: Gaussian noise with different variances in different directions (non-isotropic noise).

Supervised dimensionality reduction: Linear discriminant analysis (LDA), preserve class discriminatory information.

Blind source separation problem: 
- ICA find components that are statistically independence (stronger condition than uncorrelated). Basis vectors not necessary orthogonal.
- Nonnegative Matrix Factorization (NMF): weights and components are positive. Basis vector not necessary orthogonal.

t-SNE - t-distributed stochastic neighbor embedding
- Visualization in 2D or 3D
- Stochastic
- No reconstruction
- Free parameter: perplexity.