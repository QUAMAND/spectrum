# test -> t, e, s, t
data modify storage sr:data text append string storage sr:input text 0 1
data modify storage sr:input text set string storage sr:input text 1

# steps
# 0, 1/3, 2/3, 3/3
scoreboard players operation #i1 spectrum = #i spectrum
scoreboard players operation #i1 spectrum -= #len.Text spectrum
scoreboard players operation #i1 spectrum *= #10000 spectrum
execute store result storage sr:data step double -0.0001 run scoreboard players operation #i1 spectrum /= #j spectrum
data modify storage sr:data steps append from storage sr:data step

scoreboard players remove #i spectrum 1
execute if score #i spectrum matches 1.. run function sr:src/text/separate