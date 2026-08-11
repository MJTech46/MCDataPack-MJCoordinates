# made by https://github.com/MJTech46

# Setup objectives and gamerule once
execute unless entity @a[tag=coords_run] run gamerule minecraft:command_block_output false
execute unless entity @a[tag=coords_run] run scoreboard objectives add x_coord dummy
execute unless entity @a[tag=coords_run] run scoreboard objectives add y_coord dummy
execute unless entity @a[tag=coords_run] run scoreboard objectives add z_coord dummy
execute unless entity @a[tag=coords_run] run scoreboard objectives add day_num dummy
tag @a[tag=!coords_run] add coords_run

# Fetch raw position data and world time
execute as @a store result score @s x_coord run data get entity @s Pos[0]
execute as @a store result score @s y_coord run data get entity @s Pos[1]
execute as @a store result score @s z_coord run data get entity @s Pos[2]
execute as @a store result score @s day_num run time query day

# Display actionbar based on player facing direction (-180 to 180 degrees)

# South (-22 to 22)
title @a[y_rotation=-22..22] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"S ","color":"gold"}]

# South-West (23 to 67)
title @a[y_rotation=23..67] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"SW","color":"gold"}]

# West (68 to 112)
title @a[y_rotation=68..112] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"W ","color":"gold"}]

# North-West (113 to 157)
title @a[y_rotation=113..157] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"NW","color":"gold"}]

# North (158 to 180 AND -180 to -158)
title @a[y_rotation=158..180] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"N ","color":"gold"}]

title @a[y_rotation=-180..-158] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"N ","color":"gold"}]

# North-East (-157 to -113)
title @a[y_rotation=-157..-113] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"NE","color":"gold"}]

# East (-112 to -68)
title @a[y_rotation=-112..-68] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"E ","color":"gold"}]

# South-East (-67 to -23)
title @a[y_rotation=-67..-23] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"SE","color":"gold"}]