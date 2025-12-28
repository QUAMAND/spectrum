$execute store result storage sr:output color.r int $(step) run scoreboard players get #r-1 spectrum
$execute store result storage sr:output color.g int $(step) run scoreboard players get #g-1 spectrum
$execute store result storage sr:output color.b int $(step) run scoreboard players get #b-1 spectrum

execute store result score #r spectrum run data get storage sr:output color.r
execute store result score #g spectrum run data get storage sr:output color.g
execute store result score #b spectrum run data get storage sr:output color.b