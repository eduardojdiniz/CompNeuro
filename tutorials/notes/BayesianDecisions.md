# Bayesian Decisions

## Intro

Paul Schrater and Xaq Pitkow

- The Bayesian approach
    - define knowledge: our prior and how we should update our knowledge using observations from the world to form beliefs.
    - explicitly represents our uncertainty.
    - is the normative approach, as it is the framework that allows you to always define the optimal inference and choice.
    
- Normative (computational modeling, computation level in Marr's) modeling
    - Describes task itself
    - Guidance about what to expect from behavior: what **should** an animal do?
    - Benchmark for judging performance
    - Does not answer *How to* questions! (see Randall Munroe, *How to*)
  
- Ommatidia (insect eyes lenses)

- A probabilistic normative model says how an animal **should** draw inferences.

- Plato's allegory of the cave (analogy for latent variables).

- Mental model of world (see Rao 1999)

- Hidden State ("Internal" to the World; e.g., landscape) --> (mapping function) --> Visible State ("External", e.g., 2D picture) --> (inverse mapping) -->  Hidden State ("Internal" to the Estimator; approximated landscape = model + parameters).

- Uncertainty about the world stems from:
    - Missing data (e.g., can't determine 3D shape from 2D image).
    - Noise
    - Model mismatch (e.g., if you know there is error, but don't know its structure, then that generates uncertainty).

- Probability measures occurrence of events
    - Subjective: belief that an event occurs (occurred, will occur)
    - Frequentist: frequency of an observed event.
    - independence
    - mutual exclusive: Venn diagram doesn't overlap
    - marginalization: we don't renormalize in marginalization because we marginalized the entire variable (sum totals to 1), so we weight by 1, so we don't need to renormalize anything!
    - conditioning (sort of like a dimensionality reduction): we renormalize so that the slice sums up to 1.  

- Kinds of probabilities:
    - Prior p(x): probability of target **before** measurement (e.g., human-like shapes that my generate shadows; people more probable)
    - Likelihood p(y|x): probability of measurement given target. It's a model between the relationship of the measurement and the object of interest. The width indicates a measure of the stocasticity.
    - Posterior p(x|y): probability of target **after** measurement.
    - P(H|D) = P(D|H)P(H)/P(D)
    - Utility (Reward) function: utility is a numeric measure of value of an outcome. 

- Bayesian Decision Theory
    - Value + belief
    - Normative framework for decision making
    - Choose actions based on uncertainty to optimize value (expected utility)
    - action (a), e.g. jump distance
    - outcome (o), e.g., land or miss the jump
    - context (c), e.g., perceived drop-off
    - V_c(a) = sum_{o,c} U(o,c)p(o|a)p(c), U is utility, V_c is Value

- Task (computational): Bayes is the best way to solve things.
- Behavior (Representation/Algorithm): hypothesis that Bayes describes perception
- Brain (Implementation constraint): must implement behavior

- Conclusion
    - Latent variables: in world, cannot be observed
    - Sensory evidence: partial measurements of latent variables
    - Probability: measures uncertain beliefs
    - Inference: compute probabilities of latent variables given evidence
    - Utility/rewards: subjective value of outcomes
    - Decision/action: choices/interventions on world to obtain value

## Tutorial 1 - Bayes with a binary hidden state

Eric DeWitt, Xaq Pitkow, Saeed Salehi

When the correlation is zero, the two properties are completely independent.
This means you don't gain any information about one variable from observing the other.
Importantly, the marginal distribution of one variable is therefore independent of the other.

the marginal probabilities show the relative weighting between qualities.
The absolute probabilities for one quality will become more dependent on the other as the correlation goes to 1 or -1.

The correlation will control how much probability mass is located on the diagonals. As the correlation goes to 1 (or -1), the probability of seeing the one of the two pairings in the off-diagonal has to goes towards zero!

The correlation coefficient tells us how much of the marginal probability is transferred to the overall probability.

posterior == bayesian belief over the hidden states (emphasize our subjective knowledge about the hidden state).
marginalization is going to be used to combine our prior knowledge (**prior**), and our new information from a measurement, the (**likelihood**).

The differences between the likelihoods is a way of thinking about how much information we can gain.

What matters is the relative information: if the prior is close to 50/50,
then the likelihood has more infuence, if the likelihood is 50/50 given a
measurement (the measurement is uninformative), the prior is more important.
But the critical insite from Bayes Rule and the Bayesian approach is that what
matters is the relative information you gain from a measurement, and that
you can use all of this information for your decision.

That utility is the gain from each action and state pair, and the expected utility for an action is the sum of the utility for all state pairs, weighted by the probability of that state happening. You can then choose the action with highest expected utility.

## Tutorial 2 - Bayesian inference and decisions with continuous hidden state

Eric DeWitt, Xaq Pitkow, Saeed Salehi

$$
\begin{eqnarray}
\textrm{Mean Squared Error} &=& (\mu - \hat{\mu})^2  & \textrm{mean}\\ 
\textrm{Absolute Error} &=& \big|\mu - \hat{\mu}\big| & \textrm{median}\\
\textrm{Zero-One Loss} &=& \begin{cases}
                            0,& \textrm{if } \mu = \hat{\mu} \\
                            1,              & \textrm{otherwise}
                            \end{cases} & \textrm{mode}\\ 
\end{eqnarray}
$$

A loss function is equivalent to a negative utility function.

Loss functions can be used to determine both formal estimators and our expected loss given our error

If we want to get our uncertainty about X or Y position, we need to marginalize. However, let's imagine we have a measurement from one of the variables, for example X, and we want to understand the uncertainty we have in Y. We no longer want to marginalize because we know X, we don't need to ignore it! Instead, we can calculate the conditional probability $𝑃(𝑌|𝑋=𝑥)$.

we can think about the amount of uncertainty as inversely proportional to the amount of information we have about each variable. This is important, because the joint information is determined by the correlation. For our Bayesian approach, the important intuition is that we can also think about the mutual information between the prior and the likelihood following a measurement.

## Tutorial 3
