## function gigantica:action/timer/boss/

#wither for nearby player
effect give @e[tag=!gigantica,distance=..2.3] wither 15 2

#heal in water (cause it's a plant)
execute store result score #temp gigantica.temp if block ~ ~ ~ water
execute if score #temp gigantica.temp matches 1 if predicate gigantica:no_regen run effect give @s regeneration 10 1 true
execute if score #temp gigantica.temp matches 0 unless predicate gigantica:no_regen run effect clear @s regeneration

#bossbar
execute store result bossbar gigantica:boss value run data get entity @s Health
bossbar set gigantica:boss players @a[distance=..100]
