--main module script. put this in somewhere safe like ServerScriptService

local tweener = {}

local TweenService = game:GetService("TweenService")

function tweener.tween(color1, color2) --these two variables are defined in the server script when running the function. do not change these in the module.
	local lightColor = color1
	local partColor = color2
	for _, object in pairs(workspace:GetDescendants()) do
		if object:IsA("PointLight") and object.Name == "PointLight" or object:IsA("SpotLight") and object.Name == "SpotLight" or object:IsA("SurfaceLight") and object.Name == "SurfaceLight" then --you can make this look for objects of a different name or class
			local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
			local goal = {Color = lightColor}
			local tween = TweenService:Create(object, tweenInfo, goal)
			tween:Play()
		end
		if object:IsA("MeshPart") and object.Name == "NeonLight" or object:IsA("Part") and object.Name == "Light" then --same as above, you can always change these
			local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
			local goal = {Color = partColor}
			local tween = TweenService:Create(object, tweenInfo, goal)
			tween:Play()
		end
	end
end

return tweener 
