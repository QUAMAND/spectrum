$data modify storage sr: key set value "$(key)"
#@Compare Key
   execute unless data storage sr: {key:"QUAM12"} run return run data remove storage sr: key
   data remove storage sr: key

#@Successed
tellraw @a [{bold:1b,text:"",shadow_color:-16777216},{bold:0b,text:"[ "},{nbt:"title",storage:"sr:",interpret:1b},{bold:0b,text:" ] datapack <- "},{"underlined":1b,color:"red",text:"DISABLED"}]

data remove storage sr: title
data remove storage sr:data color
data remove storage sr:data colors
data remove storage sr:raw text
data remove storage sr:output hex
data remove storage sr:link text
data remove storage sr:link r
data remove storage sr:link g
data remove storage sr:link b
data remove storage sr:input color
data remove storage sr:input text
data remove storage sr:input colors
scoreboard objectives remove spectrum

datapack disable "file/spectrum"