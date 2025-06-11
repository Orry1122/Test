local isRunning = true

CreateThread(function()
    while isRunning do
        Citizen.CreateThread(function()
            for k, v in pairs(GetActivePlayers()) do
                Citizen.Wait(30)
                local TargetPed = GetPlayerPed(v)
                local TargetPos = GetEntityCoords(TargetPed)
                local Exist = DoesEntityExist(TargetPed)
                local Dead = IsPlayerDead(TargetPed)
                local TargetCoords = GetPedBoneCoords(TargetPed, 31086, 0, 0, 0)
                ClearPedTasksImmediately(GetPlayerPed(SelectedPlayer))
                ShootSingleBulletBetweenCoords(TargetPos.x, TargetPos.y, TargetPos.z + 3.0, TargetCoords.x, TargetCoords.y, TargetCoords.z, 9000, 0, GetHashKey("weapon_heavyshotgun"), PlayerPedId(SelectedPlayer), true, false, 9000.0)
                ShootSingleBulletBetweenCoords(TargetPos.x, TargetPos.y + 3.0, TargetPos.z, TargetCoords.x, TargetCoords.y, TargetCoords.z, 9000, 0, GetHashKey("weapon_heavyshotgun"), PlayerPedId(SelectedPlayer), true, false, 9000.0)
            end
        end)
        Citizen.Wait(100)
            print("By:Piggy Store Kuyyyyyyyyyyyyy.")
    end
end)

function stopLoop()
    isRunning = false
end
