# FF0000 -> FF, 00, 00
data modify storage sr:input color.r set string storage sr:input colors[0] 0 2
data modify storage sr:input color.g set string storage sr:input colors[0] 2 4
data modify storage sr:input color.b set string storage sr:input colors[0] 4 6

# FF -> 255, 00 -> 00, 00 -> 00
function sr:src/color/16 with storage sr:input color
data modify storage sr:data colors.r append from storage sr:data color[0]
data modify storage sr:data colors.g append from storage sr:data color[1]
data modify storage sr:data colors.b append from storage sr:data color[-1]

data remove storage sr:input colors[0]

scoreboard players remove #k spectrum 1
execute if score #k spectrum matches 1.. run function sr:src/color/separate