# 문자 분해
data modify storage sr:link text set string storage sr:input text 0 1
data modify storage sr:input text set string storage sr:input text 1

# step * 10000
scoreboard players operation #i1 spectrum = #i10000 spectrum

# step을 곱하고 처음 색을 더하는 과정
function sr:src/link/step
#output | #r, #g, #b | 0 ~ 255

# 최종 색상 -> hex
scoreboard players operation #r255 spectrum = #r spectrum
scoreboard players operation #g255 spectrum = #g spectrum
scoreboard players operation #b255 spectrum = #b spectrum

scoreboard players operation #temp spectrum = #r255 spectrum
function sr:src/link/tree/0_255
data modify storage sr:link r set from storage sr:output hex
scoreboard players operation #temp spectrum = #g255 spectrum
function sr:src/link/tree/0_255
data modify storage sr:link g set from storage sr:output hex
scoreboard players operation #temp spectrum = #b255 spectrum
function sr:src/link/tree/0_255
data modify storage sr:link b set from storage sr:output hex

# 문자 + 색상
function sr:src/link/flatting with storage sr:link

scoreboard players add #i10000 spectrum 10000
scoreboard players remove #i spectrum 1
execute if score #i spectrum matches 1.. run function sr:src/link/loop