# vc-font
All you have to do is run the script and you'll get the Vice City font.

For those more adventurous: you may explore 'example.lua' and 'Hud.lua' to learn how to utilize the font system and render your own quirky text :)

# Porting to anything other than FiveM
This is all lua, so whatever (might have some FiveM specific syntax that you might have to replace, e.g. `x += 5` -> `x = x + 5`.
The only FiveM rendering functions used are `DrawSprite` and `DrawSpriteUv` that you can swap out with anything else.
TODO: technically, Font.lua shouldn't even use DrawSpriteUv and instead should use the custom CSprite2d - unfortunately i am stupid and this code is old

# Credits
Most code is taken from reVC, right around the time it was DMCA'd. May it forever rest in peace.

# look
![image](https://cdn.discordapp.com/attachments/1319361733973774337/1319409244541419540/Screenshot_2024-12-19_160020.png?ex=6794a85d&is=679356dd&hm=cd3a0248b441d5f8f14bef734c886a8bec8a578f09f86afb0fe06b7ba1f7f937&)
