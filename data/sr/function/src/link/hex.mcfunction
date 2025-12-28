scoreboard players operation #hr1 spectrum = #r spectrum
scoreboard players operation #hr2 spectrum = #r spectrum
scoreboard players operation #hg1 spectrum = #g spectrum
scoreboard players operation #hg2 spectrum = #g spectrum
scoreboard players operation #hb1 spectrum = #b spectrum
scoreboard players operation #hb2 spectrum = #b spectrum


# r / 16, r % 16 각각 첫 번째 자리와 두 번째 자리.
#> 255/16, 255%16 = 15, 15 = ff
execute store result storage sr:output color.hr1 int 1 run scoreboard players operation #hr1 spectrum /= #16 spectrum
execute store result storage sr:output color.hr2 int 1 run scoreboard players operation #hr2 spectrum %= #16 spectrum
execute store result storage sr:output color.hg1 int 1 run scoreboard players operation #hg1 spectrum /= #16 spectrum
execute store result storage sr:output color.hg2 int 1 run scoreboard players operation #hg2 spectrum %= #16 spectrum
execute store result storage sr:output color.hb1 int 1 run scoreboard players operation #hb1 spectrum /= #16 spectrum
execute store result storage sr:output color.hb2 int 1 run scoreboard players operation #hb2 spectrum %= #16 spectrum

# 16진수
function sr:src/link/16 with storage sr:output color