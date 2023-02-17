using Plots
using DifferentialEquations
include("RK.jl")

function F(u, p, t)
  return u/sqrt(4.76)
end

#Начальные значения
const u_0 = 1.88
const u_1 = 4.57

#Интервал
const T = (0, 5*3.14)

#Задача
prob = ODEProblem(F, u_1, T)

#Решение задачи
sol = solve(
  prob,
  dtmax = 0.05
)
@show sol.t
@show sol.u

plt = plot(
  proj = :polar,
  aspect_ratio=:equal,
  dpi=300,
  legend=true
)

#Траектория катера
plot!(
  plt,
  sol.t,
  sol.u,
  xlabel="fi",
  ylabel="r(t)",
  label="Траектория катера",
  color=:red,
  title="Задача о погоне"
)

#Траектория лодки
plot!(
  plt,
  [1, 1]*19/25*3.14,
  [0, 5000],
  label="Трактория лодки",
  color=:blue,
)

savefig(plt, "lab2_2.png")