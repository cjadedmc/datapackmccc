execute if score blue teams < value teamsize run tellraw @p {"color":"dark_green","text":"Joined Team."}
execute if score blue teams < value teamsize run team join blue
execute if score blue teams >= value teamsize run tellraw @s {"color":"red","text":"MAX TEAM SIZE REACHED!"}