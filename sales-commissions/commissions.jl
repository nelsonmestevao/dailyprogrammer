#!/usr/bin/env julia

using CSV
using DataFrames

expenses    = CSV.read("expenses.csv")
revenue     = CSV.read("revenue.csv")
commission  = CSV.read("commission.csv")

nrows, ncols = size(expenses)

for i in 1:nrows
    commission[i,2] = 0
    for j in 2:ncols
        r = revenue[i,j] - expenses[i,j]
        commission[i,2] += r > 0 ? r : 0
    end
    commission[i,2] = floor(Int, commission[i,2]*0.062)
end

println(commission)

