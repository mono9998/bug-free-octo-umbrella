--example server script
local tweener = require(game.ServerScriptService.Modules.Effects.LightTween)
local color1 = Color3.fromRGB(46, 84, 255)
local color2 = Color3.fromRGB(116, 92, 255)
tweener.tween(color1, color2)
