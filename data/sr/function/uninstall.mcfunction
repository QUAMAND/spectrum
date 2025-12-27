$data modify storage sr: key set value "$(key)"
#@Compare Key
   execute unless data storage sr: {key:"QUAM12"} run return run data remove storage sr: key
   data remove storage sr: key

#@Successed
tellraw @a [{bold:1b,text:"",shadow_color:-16777216},{bold:0b,text:"[ "},{nbt:"title",storage:"sr:",interpret:1b},{bold:0b,text:" ] datapack <- "},{"underlined":1b,color:"red",text:"DISABLED"}]

datapack disable "file/spectrum"