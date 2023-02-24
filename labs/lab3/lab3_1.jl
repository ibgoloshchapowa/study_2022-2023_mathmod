#case 1
using DifferentialEquations

function lorenz!(du, u, p, t)
    a,b,c,h = p
    du[1] = -a*u[1] - b*u[2] + sin(2*t) + 1
    du[2] = -c*u[1] - h*u[2] + cos(3*t) + 1
end

const x = 24000
const y = 9500
u0 = [x, y]

p = (0.3, 0.87, 0.5, 0.41)

tspan = (0.0, 1.0)
prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob)

using Plots; gr()
plot(sol)

savefig("lab3_julia_1.png")