# * step
execute store result score #step spectrum run scoreboard players operation #i1 spectrum /= #j spectrum
#r = 255
scoreboard players operation #r spectrum = #r-1 spectrum
scoreboard players operation #g spectrum = #g-1 spectrum
scoreboard players operation #b spectrum = #b-1 spectrum
#r * 3333
scoreboard players operation #r spectrum *= #step spectrum
scoreboard players operation #g spectrum *= #step spectrum
scoreboard players operation #b spectrum *= #step spectrum
#(r * 3333) / 10000
scoreboard players operation #r spectrum /= #10000 spectrum
scoreboard players operation #g spectrum /= #10000 spectrum
scoreboard players operation #b spectrum /= #10000 spectrum

# 처음 색 + 
scoreboard players operation #r spectrum += #r1 spectrum
scoreboard players operation #g spectrum += #g1 spectrum
scoreboard players operation #b spectrum += #b1 spectrum