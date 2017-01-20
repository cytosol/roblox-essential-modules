-- Character Morphs
local CharModule = {}

function GiveHat(char, id)
  local Insert = game:GetService("InsertService")
  if char and id then
    local hat = Insert:LoadAsset(id)
    local a = hat:GetChildren()[1]
    a.Parent = char
  end
end
function GiveClothing(char, shirtid, pantsid)
  if char then
    local stemp = char["Shirt"]
    local ptemp = char["Pants"]
    if shirtid and pantsid or shirtid or pantsid then
      if stemp ~= nil then stemp.ShirtTemplate = "rbxassetid://"..id
        else
      local a = Instance.new("ShirtTemplate")
      a.ShirtTemplate = "rbxassetid://"..id
      end
      if ptemp ~= nil then ptemp.PantsTemplate = "rbxassetid://"..id
        else
      local a = Instance.new("PantsTemplate")
      a.PantsTemplate = "rbxassetid://"..id
      end
    end
  end
end

return CharModule
