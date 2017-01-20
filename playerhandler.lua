local PHandler = {}

function PHandler.IteratePlayers()
  local p = game.Players:GetPlayers()
  for i = 1, #p do
    return p[i]
  end
end
function PHandler.KickPlayer(p, reason)
  game.Players[p]:Kick(reason)
end
function PHandler.Greet(title, text)
  game.StarterGui:SetCore("SendNotification", {
       Title = title,
       Text = text
   })
end

return PHandler
