#case 2
using DifferentialEquations

function lorenz!(du, u, p, t)
    a,b,c,h = p
    du[1] = -a*u[1] - b*u[2] + sin(2*t+4)
    du[2] = -c*u[1]*u[2] - h*u[2] + cos(t+4)
end

const x = 24000
const y = 9500
u0 = [x, y]

p = (0.25, 0.64, 0.2, 0.52)

tspan = (0.0, 1.0)
prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob)

using Plots; gr()
plot(sol)

savefig("lab3_julia_2.png")