repeat task.wait() until game:IsLoaded()

local OrionLib
local success, lib = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
end)

if success then
    OrionLib = lib
else
    warn("Falha ao carregar OrionLib")
    return
end

local Window = OrionLib:MakeWindow({
    Name = "Limão Hub | Blox Fruits",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "LimaoHub",
    IntroEnabled = true,
    IntroText = "Bem-vindo ao Limão Hub"
})

getgenv().AutoFarm = false
getgenv().AutoFarmLevel = false
getgenv().AutoBoss = false
getgenv().AutoMateriais = false
getgenv().AutoRipIndra = false
getgenv().AutoEventos = false
getgenv().AutoCDK = false
getgenv().AutoDragonDojo = false
getgenv().AutoBagas = false
getgenv().AutoSkullGuitar = false
getgenv().AutoEspada = false

local function AtivarFuncao(nome: string)
    print(nome .. " ativado!")
end

local TabFarm = Window:MakeTab({Name = "Farm", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local TabBoss = Window:MakeTab({Name = "Boss", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local TabOutros = Window:MakeTab({Name = "Outros", Icon = "rbxassetid://4483345998", PremiumOnly = false})

TabFarm:AddToggle({
    Name = "Auto Farm Dinheiro",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoFarm = Value
        if Value then AtivarFuncao("Auto Farm Dinheiro") end
    end
})

TabFarm:AddToggle({
    Name = "Auto Farm Level",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoFarmLevel = Value
        if Value then AtivarFuncao("Auto Farm Level") end
    end
})

TabFarm:AddToggle({
    Name = "Auto Coletar Bagas",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoBagas = Value
        if Value then AtivarFuncao("Auto Coletar Bagas") end
    end
})

TabFarm:AddToggle({
    Name = "Auto Coletar Materiais",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoMateriais = Value
        if Value then AtivarFuncao("Auto Coletar Materiais") end
    end
})

TabBoss:AddToggle({
    Name = "Auto Boss",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoBoss = Value
        if Value then AtivarFuncao("Auto Boss") end
    end
})

TabBoss:AddToggle({
    Name = "Auto Rip Indra",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoRipIndra = Value
        if Value then AtivarFuncao("Auto Rip Indra") end
    end
})

TabBoss:AddToggle({
    Name = "Auto Dragon Dojo",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoDragonDojo = Value
        if Value then AtivarFuncao("Auto Dragon Dojo") end
    end
})

TabBoss:AddToggle({
    Name = "Auto Missão de Boss",
    Default = false,
    Callback = function(Value: boolean)
        print("Auto Missão de Boss ativado!")
    end
})

TabOutros:AddToggle({
    Name = "Auto Cursed Dual Katana",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoCDK = Value
        if Value then AtivarFuncao("Auto Cursed Dual Katana") end
    end
})

TabOutros:AddToggle({
    Name = "Auto Skull Guitar",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoSkullGuitar = Value
        if Value then AtivarFuncao("Auto Skull Guitar") end
    end
})

TabOutros:AddToggle({
    Name = "Auto Comprar Espada",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoEspada = Value
        if Value then AtivarFuncao("Auto Comprar Espada") end
    end
})

TabOutros:AddToggle({
    Name = "Auto Eventos Marítimos",
    Default = false,
    Callback = function(Value: boolean)
        getgenv().AutoEventos = Value
        if Value then AtivarFuncao("Auto Eventos Marítimos") end
    end
})

-- Funções automáticas em loop

task.spawn(function()
    while getgenv().AutoFarm do
        task.wait(1)
        print("Farmando dinheiro...")
    end
end)

task.spawn(function()
    while getgenv().AutoRipIndra do
        task.wait(2)
        print("Ativando Rip Indra...")
    end
end)

task.spawn(function()
    while getgenv().AutoBagas do
        task.wait(1.5)
        print("Coletando Bagas...")
    end
end)

task.spawn(function()
    while getgenv().AutoCDK do
        task.wait(3)
        print("Usando Cursed Dual Katana...")
    end
end)

OrionLib:Init()