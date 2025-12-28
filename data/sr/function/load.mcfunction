# 스토리지 초기화
function sr:init/storage

# 로드 메시지
tellraw @a [{bold:1b,text:"",shadow_color:-16777216},{bold:0b,text:"[ "},{nbt:"title",storage:"sr:",interpret:1b},{bold:0b,text:" ] datapack <- "},{"underlined":1b,color:"green",text:"Enabled"}]

# 스코어 초기화
scoreboard objectives add spectrum dummy
   #const
   scoreboard players set #10000 spectrum 10000
   scoreboard players set #16 spectrum 16