
-- 🌟 ZENIHT CUSTOM LOADER 🌟

-- Mostrar pantalla de carga ZENIHT
local function showZenithLoading(callback)
    local player = game.Players.LocalPlayer
    local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    gui.Name = "ZenithLoaderUI"
    gui.ResetOnSpawn = false

    local bg = Instance.new("Frame", gui)
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

    local banner = Instance.new("TextLabel", bg)
    banner.Size = UDim2.new(0.8, 0, 0.2, 0)
    banner.Position = UDim2.new(0.1, 0, 0.3, 0)
    banner.BackgroundTransparency = 1
    banner.Text = "🔥 ZENIHT 🔥"
    banner.TextColor3 = Color3.fromRGB(255, 0, 0)
    banner.Font = Enum.Font.GothamBlack
    banner.TextScaled = true

    local loading = Instance.new("TextLabel", bg)
    loading.Size = UDim2.new(0.8, 0, 0.1, 0)
    loading.Position = UDim2.new(0.1, 0, 0.55, 0)
    loading.BackgroundTransparency = 1
    loading.Text = "⌛ Cargando script..."
    loading.TextColor3 = Color3.fromRGB(255, 255, 255)
    loading.Font = Enum.Font.Gotham
    loading.TextScaled = true

    local progressBarBG = Instance.new("Frame", bg)
    progressBarBG.Size = UDim2.new(0.6, 0, 0.05, 0)
    progressBarBG.Position = UDim2.new(0.2, 0, 0.7, 0)
    progressBarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Instance.new("UICorner", progressBarBG).CornerRadius = UDim.new(0, 8)

    local bar = Instance.new("Frame", progressBarBG)
    bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    bar.Size = UDim2.new(0, 0, 1, 0)
    bar.BorderSizePixel = 0
    Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 8)

    local ts = game:GetService("TweenService")
    local tween = ts:Create(bar, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = UDim2.new(1, 0, 1, 0)
    })
    tween:Play()

    tween.Completed:Connect(function()
        gui:Destroy()
        callback()
    end)
end

-- Cargar el script ofuscado desde GitHub tras animación
showZenithLoading(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lobocielo/ZenihtV1/main/ZenihtV1/DumpViewerObf.lua"))()
end)
