local tweener = {}

local TweenService = game:GetService("TweenService")

function tweener.tween(color1, color2)
	local lightColor = color1
	local partColor = color2
	for _, object in pairs(workspace:GetDescendants()) do
		if object:IsA("PointLight") and object.Name == "PointLight" or object:IsA("SpotLight") and object.Name == "SpotLight" or object:IsA("SurfaceLight") and object.Name == "SurfaceLight" then
			local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
			local goal = {Color = lightColor}
			local tween = TweenService:Create(object, tweenInfo, goal)
			tween:Play()
		end
		if object:IsA("MeshPart") and object.Name == "NeonLight" or object:IsA("Part") and object.Name == "Light" then
			local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
			local goal = {Color = partColor}
			local tween = TweenService:Create(object, tweenInfo, goal)
			tween:Play()
		end
	end
end

return tweener 
