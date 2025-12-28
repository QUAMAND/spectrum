# input: text-String, colors-[]

#> Exception

data remove storage sr:data text
data remove storage sr:data steps
data remove storage sr:data colors
data remove storage sr:output colors
data remove storage sr:raw text

# 값 입력
$data modify storage sr:input text set value "$(text)"
$data modify storage sr:input colors set value $(colors)
$data modify storage sr:input style set value $(style)

# 문자 분해
execute store result score #len.Text spectrum run data get storage sr:input text
scoreboard players operation #i spectrum = #len.Text spectrum
scoreboard players operation #j spectrum = #len.Text spectrum
scoreboard players remove #j spectrum 1
function sr:src/text/separate
data remove storage sr:data step

# 색상 분해
execute store result score #len.Color spectrum run data get storage sr:input colors
scoreboard players operation #k spectrum = #len.Color spectrum
function sr:src/color/separate
data remove storage sr:data color

# 재결합
function sr:src/link/setup
scoreboard players operation #l spectrum = #len.Text spectrum
function sr:src/link/loop