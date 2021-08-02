# You can see here what is Agent-based Model and its pros and cons.
# Throughout this post, I would like to display how we can model the COVID-19 spread.

# You can build ABM(Agent-Based Model) pretty easily with Agents.jl.
# There are five steps to build a ABM.

# but before we proceeding it, we need to think about our model.

# ## The SIR model
# SIR stands for Succeptable, Infected and Recovered. 
# It is just modelling the general cases that once you got COVID-19 and recovered, you are not infected anymore.
# With the three states(S, I, R), there are one more states of agents which is dead. 
# Therefore, we need to know what is going on here.

# ## Set a Space 
# First of all, you need to set space the agent will move around.
# Agents.jl provide several options(you can check that [here](https://juliadynamics.github.io/Agents.jl/stable/api/#Available-spaces))
# Here for your simple model.
using Agents 

