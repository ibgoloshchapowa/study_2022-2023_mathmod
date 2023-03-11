using DifferentialEquations

function lorenz!(du, u, p, t)
    a, b, c, d = p
    du[1] = -a * u[1] + c * u[1] * u[2]
    du[2] = b * u[2] - d * u[1] * u[2]
end

const x = 12 
const y = 17
u0 = [x, y]

p = (0.18, 0.38, 0.047, 0.035)
tspan = (0.0, 50.0)
prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob)

using Plots; gr()
#решение
plot(sol)
savefig("lab5_solution.png")

#фазовый портрет
plot(sol, vars=(2,1))
savefig("lab5.png")