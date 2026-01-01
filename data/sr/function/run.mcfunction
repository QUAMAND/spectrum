# input: text-String, colors-[]

data remove storage sr:data colors
data remove storage sr:output colors
data remove storage sr:raw text

# 값 입력
$data modify storage sr:input text set value "$(text)"
$data modify storage sr:input colors set value $(colors)

# 색상 분해
execute store result score #len.Color spectrum run data get storage sr:input colors
scoreboard players operation #k spectrum = #len.Color spectrum
function sr:src/color/separate

# 문자 분해
execute store result score #len.Text spectrum run data get storage sr:input text
scoreboard players set #i10000 spectrum 0
scoreboard players operation #i spectrum = #len.Text spectrum
scoreboard players operation #j spectrum = #len.Text spectrum
scoreboard players remove #j spectrum 1

# (끝 색 - 처음 색)
function sr:src/link/setup
#> 처음 색 + (끝 색 - 처음 색) * step
function sr:src/link/loop