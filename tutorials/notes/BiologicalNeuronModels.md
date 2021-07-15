# Biological Neuron Models

## Intro

- Upi Bhalla

Wilfrid Rall

Hodgkin and Huxley

Alan Turing: Chemical Computation

Levels of Computation
- Behavior
- Systems
-Areas
-Circuits
-Neurons
-Dendrites
-Synapses
-Molecules

Rall's solution for sequence selectivity (Branco, Clarke, Hausser, 2010)

Neurons can do many key operations
- Summation/integration
- Sequence computation
- Association
- Memory

## Tutorial 1

- Richard Naud

How are action potentials generated given current flowing into cell body from dendrites and synapses?

'Leak' -> model current leaking through the membrane not through the ions channels

Replace I_Na and I_K by a threshold for spike emission followed by a reset to a fixed potential.

Siegert Equation

Fluctuation-driven regime: firing mainly driven by variance (high CV)

Mean-driven regime: mainly driven by mean (low CV)

The variability of the responses depends on both the mean and variance of the input, not only on the variance.

Rheobase current

F-I curve: input-output transfer function.

For a Poisson process there is no relationship between spike rate and spike irregularity.

## Tutorial 2

Campbell's theorem

Perstimulus time histogram

# Tutorial 3

What statistical property of the pre-synaptic ensemble is transmitted to the post-synaptic neuron?

Tsodyks Markram Model

Free Membrane Potential (FMP)

## Outro

- Yiota Poirazi

This is a perfect example of a note:
Dendritic spikes in distal tuft of L5 pyramidal neurons are causally linked to sensory perception (Takahashi et al, Science 2016)

Synaptic inputs within a dendritic branch are non-linearly integrated (sigmoid) and synpatic inputs between branches are linearly integrated (Poirazi et al, Neuron, 2003a). This is true experimentally for both basal (B. Polsky et al, Nat. Neuro., 2004) and apical branches (C. Losonczy and Magee, Neuron, 2006). 

Interneurons, i.e., believed to be point neurons in the sense they only perform weighted sum at the soma (e.g., basket cells at hippocampus and prefrontal cortex for different morphologies), actually show sigmoid (supralinear, i.e., support generation of dentritic spikes) and sublinear summation (Tzilivaki et al Nat. Comm., 2019)
integration. This was confirmed experimentally in PV cells (Cornford et al, eLife, 2019).

Neurons as a 2-layer ANN (Poirazi et al, Neuron, 2003b).

Neurons as a 2-layer modular ANN (Tzilivaki et al Nat. Comm., 2019).

Idea: 2-layer modular ANN where the assignment of each weight to be either of the supralinear or sublinear  hidden layer poll is learned.

Incorporating dendrites in the model increases the storage capacity by at least one order of magnitude (Poirazi and Mel, Neuron, 2001).

dCaAP vs Idend/Irhe nonlinear transfer function found in human layer 2 piramidal neuron's dendrite confer the neuron the capability of implementing an XOR gate (Gidon et al, Science 2020).

Neurons that stores different memories separated by a 5 hour span in a memory engram (i.e., population of neurons storing a set of memories) have overlapping representations, that is, a given memory is stored in common neurons (Kastellakis et al, Cell Reports, 2016). Moreover, the axons of those neurons storing the same memories form clusters on the same dendrites (i.e., dendritic overlap of different memories) at the 5 hour difference in memory formation and even at shorter time intervals. This is in line with experimental evidence (Cai et al, Nature 2016). The overall conclusion is that two memories become linked via their storage in common cells and dendrites.

Non-linear interneurons (i.e., interneurons with non-linear dendrites) leads to lower firing rates, smaller and sparser memory engrams (Tzilivaki et al, Nat. Comm., 2019).

Poirazi and Papoutsi, Nat. Rev. Neurosc. 2020.