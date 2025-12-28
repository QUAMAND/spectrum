#> 처음 색 + (끝 색 - 처음 색) * step

# (끝 색 - 처음 색) * step
data modify storage sr:data step set from storage sr:data steps[0]
function sr:src/link/step with storage sr:data
data remove storage sr:data steps[0]

# 처음 색 + (끝 색 - 처음 색) * step
scoreboard players operation #r spectrum += #r1 spectrum
scoreboard players operation #g spectrum += #g1 spectrum
scoreboard players operation #b spectrum += #b1 spectrum

# 최종 색상 -> hex
function sr:src/link/hex

scoreboard players remove #l spectrum 1
execute if score #l spectrum matches 1.. run function sr:src/link/loop