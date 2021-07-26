# Optimal Control

## Intro

- Maurice Smith

How to use your knowledge to select good actions?

Optimal Control: control **after** you understand the world.

Reinforcement Learning: control **before** you understand the world.

nimble - quick and light in movement or action; agile.

Automation =! planning

Sea squirt and human behavior. The sea squirt use nervous system to find optimal spot to settle and then "ingest" their own nervous system XD.

Autonomous dynamical system: 
without external input. Without external input, there is no potential for control, hence no nervous system.

Control need not be single-minded (!): multiple goals that we strive for simultaneously.

Open Loop Control

a(t) = f(s*(t)), since s*(t) is known, a(t0) can be pre set!

For the linear case, s_dot(t) = Ds(t) + Ba(t) -> a(t) Binv(sdot*(t) - Ds*(t))

$\dot{s}^\ast(t), s^\ast(t) \textrm{ (Desired State)} \rightarrow D^{-1} \textrm{ (Controller: Model of } D^{-1}\textrm{)} \rightarrow a(t) \rightarrow D \textrm{ (Dynamical System)}\rightarrow s^\ast(t) \approx \dot{s}^\ast(t)$


Closed Loop Control

a(t) = f(s*(t), s(t)), a(t) is continuously update based on sensory information about the state s(t) we are actually experiencing. We admit that the actual s(t) maybe different from what we planned from experience as s*(t). Often called closed loop **feedback** control as info about s(t) is **fed back** into the control function f.

Problem with time delay between transducing sensory information about the state into neural encoding, combining that info with the desired state to estimate an error signal, and generating supplementary motor commands via a feedback controller to compensate for the error. In the order or 100-200 ms for visual feedback.

- Coexistence of open loop (feedforward) and closed loop (feedback) control (Ferris et al, Diabetes 2020).


Objective: Maximize reward (R). Control: choose $a_t \rightarrow \max{R} = \max{\sum_i\alpha^ir_i}. This is hard, requires info about all future rewards!

Value function $V(s_t)$: total future reward expected for each state. Objective: choose the $a_t$ that maximizes $V(s_{t+1}) = V(D(s_t, a_t))$. This strategy is called a *policy* $\pi(a_t | s_t)$.

We use dynamic programming on Bellman equation because it is a backwards in time recursive equation for the value function.

## Tutorial 1

Markov Decision Process (MDP) == sequential decision-making

Partially Observable MDP (POMDPs): current world state is uncertain, we have a belief state instead, but current uncertainty is known (posterior), although future uncertainty is unknown.


MDPs are interactive Markov Models and POMDPs are interactive HMMs.

prob(stay) = p
timescale = 1/(1-p)

## Tutorial

Advantage of the control gain: independent of the initial condition.
