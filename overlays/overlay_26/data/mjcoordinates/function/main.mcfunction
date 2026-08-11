# ============================================================
# MC COORDINATES
# Minecraft Java Edition 1.21.11+
# ============================================================

# ------------------------------------------------------------
# INITIALIZATION
# ------------------------------------------------------------

execute unless entity @a[tag=coords_run] run gamerule minecraft:command_block_output false

scoreboard objectives add x_coord dummy
scoreboard objectives add y_coord dummy
scoreboard objectives add z_coord dummy

scoreboard objectives add day_num dummy
scoreboard objectives add world_time dummy
scoreboard objectives add constant dummy
scoreboard players set #24000 constant 24000
scoreboard players operation #day day_num = #time world_time
scoreboard players operation #day day_num /= #24000 constant

tag @a[tag=!coords_run] add coords_run


# ------------------------------------------------------------
# FETCH PLAYER POSITION + WORLD DAY
# ------------------------------------------------------------

execute as @a store result score @s x_coord run data get entity @s Pos[0]
execute as @a store result score @s y_coord run data get entity @s Pos[1]
execute as @a store result score @s z_coord run data get entity @s Pos[2]


execute store result score #time world_time run time query time
execute as @a run scoreboard players operation @s day_num = #day day_num


# ------------------------------------------------------------
# SOUTH (-22 to 22)
# ------------------------------------------------------------

title @a[y_rotation=-22..22] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"S ","color":"gold"}]


# ------------------------------------------------------------
# SOUTH-WEST (23 to 67)
# ------------------------------------------------------------

title @a[y_rotation=23..67] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"SW","color":"gold"}]


# ------------------------------------------------------------
# WEST (68 to 112)
# ------------------------------------------------------------

title @a[y_rotation=68..112] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"W ","color":"gold"}]


# ------------------------------------------------------------
# NORTH-WEST (113 to 157)
# ------------------------------------------------------------

title @a[y_rotation=113..157] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"NW","color":"gold"}]


# ------------------------------------------------------------
# NORTH (158 to 180)
# ------------------------------------------------------------

title @a[y_rotation=158..180] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"N ","color":"gold"}]

title @a[y_rotation=-180..-158] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"N ","color":"gold"}]


# ------------------------------------------------------------
# NORTH-EAST (-157 to -113)
# ------------------------------------------------------------

title @a[y_rotation=-157..-113] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(-)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"NE","color":"gold"}]


# ------------------------------------------------------------
# EAST (-112 to -68)
# ------------------------------------------------------------

title @a[y_rotation=-112..-68] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(=)","color":"gray"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"E ","color":"gold"}]


# ------------------------------------------------------------
# SOUTH-EAST (-67 to -23)
# ------------------------------------------------------------

title @a[y_rotation=-67..-23] actionbar ["",{"text":"x","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"x_coord"},"color":"aqua"},{"text":" "},{"text":"y","color":"gold"},{"text":":","color":"gold"},{"score":{"name":"*","objective":"y_coord"},"color":"aqua"},{"text":" "},{"text":"z","color":"gold"},{"text":":","color":"gold"},{"text":"(+)","color":"white"},{"score":{"name":"*","objective":"z_coord"},"color":"aqua"},{"text":" "},{"text":"dy ","color":"gold"},{"score":{"name":"*","objective":"day_num"},"color":"white"},{"text":" "},{"text":"SE","color":"gold"}]