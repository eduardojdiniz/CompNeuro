# Dynamical Networks

## Intro

- Nicolas Brunel

### Part list
    - How many types of neurons?
    - How many neurons?
    - How are neurons connected?
    - What are the external inputs?
    - Which neuron model?
    - Which synapse model?

1) How many yypes of neurons and/or how many neurons?
    - 1 population (E or I)
    - 2 populations (E-I)
    - > 2 populations (e.g., I subtypes, layers, multiple connected networks)
    
2) Connectivity
    - Fully connected (all-to-all): mathematically tractable 
    - Randomly connected (e.g., Erdos-Renyi): simply captures sparsity of the brain. 
    - With spatial structure: spatial-dependent connectivity.
    - With a structure imposed by learning: dynamic structure.

3) External inputs
    - Constant: mathematically tractable
    - Stochastic (e.g., Poisson processes, Ornstein-Uhlenbeck processes - OU is a continuous stochastic process)
    - Temporally/spatially structured
 
4) Neurons
    - Binary
    - Rate
    - Spiking
        - LNP (Linear Non-linear Poisson)
        - LIF
        - Generalized IFs: EIF, aEIF, etc
        - HH-type, single compartment
        - HH-type, multiple compartment (add spatial structure)

5) Synapses
    - Binary/rate networks: Fixed number (synaptic weight)
    - Spiking networks: Temporal kernel
    - Current-based/conductance-based (voltage dependent)
    - Non-plastic/plastic

### Dynamics of Networks of spiking neurons
    - Network dynamics can be visualized using raster plots and population activity (i.e., PSTH)
#### Fully connected
    - Fully connected, homogeneous networks with no noise produce regular (periodic) single neuron ring.
    - Network can synchronize (synchronous states), or not (asynchronous states), depending on nature of interactions (e.g., E, I, gap-junctional), synaptic time constants, neuronal properties (e.g., adaptation).
    - Have been used to investigate mechanisms of various physiological, or pathological rhythms in brain networks, e.g., Gamma oscillation in I networks, or E-I networks.
#### Random connectivity
    - Random connectivity produces irregular firing in purely I networks, and E-I networks, even in the absence of noise, provided inhibition is strong enough.
    - Irregular states can be asynchronous or synchronous, depending again on nature of interactions and synaptic time constants.
    - In random E-I networks, large excitatory and inhibitory currents approximately cancel each other, leading to a 'balanced state'. The mean membrane potential are below threshold - firing caused by large fluctuations around the mean, which leads a high degree of irregularity of firing (CV close to 1, Poissonian-like). Moreover, it leads to brad, lognormal-like, distributions of firing rates.
    - Randomly connected E-I networks in the balanced state reproduce in a parsimonious fashion multiple ubiquitous features of cortical activity in vivo:
    - Large membrane potential fluctuations, especially in the wake state.
    - Broad distributions of ISIs/High CVs.
    - Broad distribution of firing rates.
#### Structured connectivity
    - Temporally symmetric Hebbian learning leads to networks with a strong degree of symmetry. They lead to a fixed point attractor (i.e., attractor dynamics/ persistent activity). This is consistent with persistent activity seen in delayed response tasks in primates and rodents (i.e., activity persists after stimulus disappear)
    - Temporally asymmetric Hebbian plasticity (e.g., STDP) leads to strongly asymmetric connectivity. They can lead to sequential activity which is consistent with sequential activity observed in multiple behavioral contexts in multiple species (e.g., time cells in hippocampus, area HVC in birdsongs).
    
### From networks of spiking neurons to rate models
     - Can we approximate the firing rate dynamics of networks of spiking neurons with simpler models?
     - LN model: signal -> linear filter -> static non-linearity -> firing rate. A rate model is an specific instance of LN models. It can describe firing rate of single neurons or of entire populations of neurons.
     - A rate model is an LN model where the temporal filter kernel is an exponential kernel. The convolution can be written as a first-order differential equation.
$$ r(t) = \phi\left( \int_{-\inf)^t K(t - t')I(t')dt'\right)} $$

if $K(t) = exp(-t/\tau)$, then $r = \phi(s)$, where $s$ is described by
$$ \tau\frac{ds}{dt}=-s + I $$.

An alternative formulation of the rate model is the Wilson-Cowan model (the rate itself obeys a first-order equation):
$$ \tau\frac{dr}{dt} = -r + \phi(I) $$

#### Network of Spiking Neurons (NSN) -> Linear Non-linear (LN) Model:
$$r(t) = \phi(K\ast I(t)) $$
where $K$ and $\phi$ can be computed numerically for any spiking neuron model, and analytically for simple enough models (i.e., LIF).

#### LN -> Rate Model
In several models (e.g., EIF, WB-Wang-Buzsaki), K can be well approximated by an exponential filter when input noise is sufficient large:
$$ r(t) = \phi(s) $$
$$ \tau_{eff}\frac{ds}{dt} = -s + I(t) $$
where $\tau_{eff}$ can be determined numerically, and analytically for the EIF.

- In rate models, information about spike times is lost. Thus, rate models are not appropriate for studying questions about spike train statistics in networks.

Ring rate?

## Tutorial 1 - Neural Rate Models

- Julijana Gjorgjieva

Build a firing rate model of a single population of excitatory neurons, i.e., we will treat a population of individual excitatory neurons as a single homogeneous population and approximate their dynamics using a single one-dimensional equation describing the evolution of their average spiking rate in time. 

Specifically, we want to numerically simulate the equation for the firing rate dynamics of a 1D excitatory population and find the fixed points of the system. Moreover, we want to visualize the response of the population as a function of parameters such as threshold level and gain, using the frequency-current (F-I) curve.

F-I curve = Transfer function = stimulus-response function = tuning curve

## Tutorial 2 - Wilson-Cowan Model

Build a firing rate model of a network consisting of two neuronal populations, one excitatory and the other inhibitory. We will use the Wilson-Cowan rate model to describe the evolution of the average spiking rate in time of our two neuronal populations. 

Specifically, we want to numerically simulate the equations for the firing rate dynamics of a 2D system composed of an excitatory and an inhibitory population of neurons and visualize and inspect its behavior using phase plane analysis, vector fields, and nullclines. Moreover, we want to plot the frequency-current (F-I) curves for both populations.

Once rE converges to its fixed point, the system becomes 1-Dimensional and our phase space reduces to the 1D case.

## Tutorial 3 - Extending the Wilson-Cowan Model

We can find and plot the fixed points of the Wilson-Cowan model and investigate its stability by linearizing its dynamics and examining the Jacobian matrix. We can then learn how the Wilson-Cowan model can reach an oscillatory state.

We can visualize the behavior of an inhibition-stabilized network. Finally, we can simulate working memory using the Wilson-Cowan model.

Is nonlinearity in the neuron transfer function essential for inducing oscillatory dynamics in the Wilson-Cowan model? 

Two mutually connected neuron populations (one excitatory and inhibitory) are exhibiting oscillatory dynamics.How can we quench these oscillations without changing their connectivity? *
A - We cannot quench oscillations without changing the connectivity matrix
B - Adding excitatory input to inhibitory population 
C - By decreasing the time constant of one of the populations
D - Adding inhibitory input to inhibitory population 