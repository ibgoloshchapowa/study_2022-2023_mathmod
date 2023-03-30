using DifferentialEquations

function lorenz!(du, u, p, t)
    du[1] = u[1] - (b/c1)*u[1]*u[2] - (a1/c1)*u[1]*u[1]
    du[2] = (c2/c1)*u[2] - (b/c1)*u[1]*u[2] - (a2/c1)*u[2]*u[2]
end

const N = 22
const q = 1
const p_cr = 19
const tau1 = 15
const tau2 = 18
const p1 = 12
const p2 = 10

const a1 = p_cr/(tau1*tau1*p1*p1*N*q)
const a2 = p_cr/(tau2*tau2*p2*p2*N*q)

const b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q)
const c1 = (p_cr - p1)/(tau1*p1)
const c2 = (p_cr - p2)/(tau2*p2)
const d = 0.0016

const M1 = 2.4
const M2 = 1.7 

u0 = [M1, M2]

p = (0.01, 0.02)
tspan = (0.0, 30.0)

prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax=0.1)

using Plots; gr()
plot(sol)
savefig("julia_1.png")

