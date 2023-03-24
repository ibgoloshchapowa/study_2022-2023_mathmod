# case 1
using DifferentialEquations

function lorenz!(du, u, p, t)
    du[1] = (a1 + a2*u[1])*(N - u[1])

end

const N = 888
const N0 = 18
const a1 = 0.81
const a2 = 0.0003
u0 = [N0]
p = (0.01, 0.02)
tspan = (0.0, 10.0)

prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax=20)

using Plots; gr()
plot(sol)
savefig("julia_1.png")

