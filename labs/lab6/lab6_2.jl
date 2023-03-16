using DifferentialEquations

function lorenz!(du, u, p, t)
    a, b = p
    du[1] = -a*u[3]
    du[2] = a*u[3] - b*u[1]
    du[3] = b*u[1]

end

const N = 13000
const I0 = 113
const R0 = 13
const S0 = N - I0 - R0

u0 = [I0, R0, S0]

p = (0.01, 0.02)
tspan = (0.0, 200.0)

prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax=1)

using Plots; gr()
plot(sol)
savefig("julia_2.png")

