# case 2
using DifferentialEquations
function lorenz!(du, u, p, t)
    du[1] = (a1 + a2*u[1])*(N - u[1])

end

const N = 888
const N0 = 18
const a1 = 0.00008
const a2 = 0.8
u0 = [N0]
p = (0.01, 0.02)
tspan = (0.0, 0.5)

prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax=0.5)

using Plots; gr()
plot(sol)
savefig("julia_2.png")

