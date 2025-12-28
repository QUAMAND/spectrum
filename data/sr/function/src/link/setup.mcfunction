# 처음 색 얻기(r, g, b 따로)
# 255, 0, 0
execute store result score #r1 spectrum run data get storage sr:data colors.r[0]
execute store result score #g1 spectrum run data get storage sr:data colors.g[0]
execute store result score #b1 spectrum run data get storage sr:data colors.b[0]

# 끝 색 얻기(r, g, b 따로)
# 0, 255, 255
execute store result score #r-1 spectrum run data get storage sr:data colors.r[1]
execute store result score #g-1 spectrum run data get storage sr:data colors.g[1]
execute store result score #b-1 spectrum run data get storage sr:data colors.b[1]

# 끝 색 - 처음 색
scoreboard players operation #r-1 spectrum -= #r1 spectrum
scoreboard players operation #g-1 spectrum -= #g1 spectrum
scoreboard players operation #b-1 spectrum -= #b1 spectrum