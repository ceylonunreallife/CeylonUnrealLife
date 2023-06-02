local QBCore = exports['qb-core']:GetCoreObject()

-------- foods ----------

RegisterNetEvent('mt-jcafeCafe:server:FazerCupcakeMorango', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local barramanteiga = Player.Functions.GetItemByName('flour')
    local pacotefarinha = Player.Functions.GetItemByName('avocado')
    local caixamorangos = Player.Functions.GetItemByName('caixa-morangos')

    if pacoteleite ~= nil and barramanteiga ~= nil and pacotefarinha ~= nil and caixamorangos ~= nil then

        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('flour', 1)
        Player.Functions.RemoveItem('avocado', 1)
        Player.Functions.RemoveItem('caixa-morangos', 1)
        Player.Functions.AddItem('onigiri', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["onigiri"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerCupcakeLimao', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local barramanteiga = Player.Functions.GetItemByName('flour')
    local pacotefarinha = Player.Functions.GetItemByName('avocado')
    local limao = Player.Functions.GetItemByName('limao')

    if pacoteleite ~= nil and barramanteiga ~= nil and pacotefarinha ~= nil and limao ~= nil then

        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('flour', 1)
        Player.Functions.RemoveItem('avocado', 1)
        Player.Functions.RemoveItem('limao', 1)
        Player.Functions.AddItem('ramen', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["ramen"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerCupcakeChocolate', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local barramanteiga = Player.Functions.GetItemByName('flour')
    local pacotefarinha = Player.Functions.GetItemByName('avocado')
    local barrachocolate = Player.Functions.GetItemByName('barra-chocolate')

    if pacoteleite ~= nil and barramanteiga ~= nil and pacotefarinha ~= nil and barrachocolate ~= nil then

        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('flour', 1)
        Player.Functions.RemoveItem('avocado', 1)
        Player.Functions.RemoveItem('barra-chocolate', 1)
        Player.Functions.AddItem('tonkatsu', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["tonkatsu"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerGeladoMorango', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacotenatas = Player.Functions.GetItemByName('pacote-natas')
    local leitecondensado = Player.Functions.GetItemByName('leite-condensado')
    local caixamorangos = Player.Functions.GetItemByName('caixa-morangos')

    if pacotenatas ~= nil and leitecondensado ~= nil and caixamorangos ~= nil then

        Player.Functions.RemoveItem('pacote-natas', 1)
        Player.Functions.RemoveItem('leite-condensado', 1)
        Player.Functions.RemoveItem('caixa-morangos', 1)
        Player.Functions.AddItem('tofu', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["tofu"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerGeladoChocolate', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacotenatas = Player.Functions.GetItemByName('pacote-natas')
    local leitecondensado = Player.Functions.GetItemByName('leite-condensado')
    local barrachocolate = Player.Functions.GetItemByName('barra-chocolate')

    if pacotenatas ~= nil and leitecondensado ~= nil and barrachocolate ~= nil then

        Player.Functions.RemoveItem('pacote-natas', 1)
        Player.Functions.RemoveItem('leite-condensado', 1)
        Player.Functions.RemoveItem('barra-chocolate', 1)
        Player.Functions.AddItem('sushi', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["sushi"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerGeladoBaunilha', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacotenatas = Player.Functions.GetItemByName('pacote-natas')
    local leitecondensado = Player.Functions.GetItemByName('leite-condensado')
    local extratobaunilha = Player.Functions.GetItemByName('extrato-baunilha')

    if pacotenatas ~= nil and leitecondensado ~= nil and extratobaunilha ~= nil then

        Player.Functions.RemoveItem('pacote-natas', 1)
        Player.Functions.RemoveItem('leite-condensado', 1)
        Player.Functions.RemoveItem('extrato-baunilha', 1)
        Player.Functions.AddItem('jcafepancake', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["jcafepancake"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerPanquencaNutela', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacotefarinha = Player.Functions.GetItemByName('avocado')
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local pacoteacucar = Player.Functions.GetItemByName('pacote-acucar')
    local frasconutela = Player.Functions.GetItemByName('frasco-nutela')

    if pacotefarinha ~= nil and pacoteleite ~= nil and pacoteacucar ~= nil and frasconutela ~= nil then

        Player.Functions.RemoveItem('avocado', 1)
        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('pacote-acucar', 1)
        Player.Functions.RemoveItem('frasco-nutela', 1)
        Player.Functions.AddItem('jcafebudhabowl', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["jcafebudhabowl"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerPanquencaOreo', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacotefarinha = Player.Functions.GetItemByName('avocado')
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local pacoteacucar = Player.Functions.GetItemByName('pacote-acucar')
    local pacoteoreo = Player.Functions.GetItemByName('cheese')

    if pacotefarinha ~= nil and pacoteleite ~= nil and pacoteacucar ~= nil and pacoteoreo ~= nil then

        Player.Functions.RemoveItem('avocado', 1)
        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('pacote-acucar', 1)
        Player.Functions.RemoveItem('cheese', 1)
        Player.Functions.AddItem('misosoup', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["misosoup"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerMuffinChocolate', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacotefarinha = Player.Functions.GetItemByName('avocado')
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local barrachocolate = Player.Functions.GetItemByName('barra-chocolate')

    if pacotefarinha ~= nil and pacoteleite ~= nil and barrachocolate ~= nil then

        Player.Functions.RemoveItem('avocado', 1)
        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('barra-chocolate', 1)
        Player.Functions.AddItem('muffin-chocolate', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["muffin-chocolate"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerWaffleNutela', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacotefarinha = Player.Functions.GetItemByName('avocado')
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local frasconutela = Player.Functions.GetItemByName('frasco-nutela')

    if pacotefarinha ~= nil and pacoteleite ~= nil and frasconutela ~= nil then

        Player.Functions.RemoveItem('avocado', 1)
        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('frasco-nutela', 1)
        Player.Functions.AddItem('waffle-nutela', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["waffle-nutela"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerPastelFrango', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacotefarinha = Player.Functions.GetItemByName('avocado')
    local barramanteiga = Player.Functions.GetItemByName('flour')
    local frango = Player.Functions.GetItemByName('frango')

    if pacotefarinha ~= nil and barramanteiga ~= nil and frango ~= nil then

        Player.Functions.RemoveItem('avocado', 1)
        Player.Functions.RemoveItem('flour', 1)
        Player.Functions.RemoveItem('frango', 1)
        Player.Functions.AddItem('pastel-frango', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["pastel-frango"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

---------------------------
------- drinks -----------

RegisterNetEvent('mt-jcafeCafe:server:FazerCafe', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local water_bottle = Player.Functions.GetItemByName('water_bottle')
    local graoscafe = Player.Functions.GetItemByName('graos-cafe')

    if water_bottle ~= nil and graoscafe ~= nil then

        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('graos-cafe', 1)
        Player.Functions.AddItem('cafe-jcafe', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["cafe-jcafe"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerLatte', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local graoscafe = Player.Functions.GetItemByName('graos-cafe')

    if graoscafe ~= nil and pacoteleite ~= nil then

        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('graos-cafe', 1)
        Player.Functions.AddItem('latte-jcafe', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["latte-jcafe"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerBubbleTeaAmora', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local water_bottle = Player.Functions.GetItemByName('water_bottle')
    local caixaamoras = Player.Functions.GetItemByName('caixa-amoras')

    if water_bottle ~= nil and caixaamoras ~= nil then

        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('caixa-amoras', 1)
        Player.Functions.AddItem('bubble-amora', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["bubble-amora"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerBubbleTeaMorango', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local water_bottle = Player.Functions.GetItemByName('water_bottle')
    local caixamorangos = Player.Functions.GetItemByName('caixa-morangos')

    if water_bottle ~= nil and caixamorangos ~= nil then

        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('caixa-morangos', 1)
        Player.Functions.AddItem('yakult', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["yakult"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazerBubbleTeaMenta', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local water_bottle = Player.Functions.GetItemByName('water_bottle')
    local extratomenta = Player.Functions.GetItemByName('extrato-menta')

    if water_bottle ~= nil and extratomenta ~= nil then

        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('extrato-menta', 1)
        Player.Functions.AddItem('bubble-menta', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["bubble-menta"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazereggshakeChocolate', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local barrachocolate = Player.Functions.GetItemByName('barra-chocolate')

    if pacoteleite ~= nil and barrachocolate ~= nil then

        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('barra-chocolate', 1)
        Player.Functions.AddItem('chuhai', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["chuhai"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('mt-jcafeCafe:server:FazereggshakeMorango', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pacoteleite = Player.Functions.GetItemByName('egg')
    local caixamorangos = Player.Functions.GetItemByName('caixa-morangos')

    if pacoteleite ~= nil and caixamorangos ~= nil then

        Player.Functions.RemoveItem('egg', 1)
        Player.Functions.RemoveItem('caixa-morangos', 1)
        Player.Functions.AddItem('aloedrinks', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["aloedrinks"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

----------------------------------------------
------- Take money ingredients ----------

RegisterNetEvent('mt-jcafeCafe:server:Tirar20dolares', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveMoney('bank', 20)
end)

RegisterNetEvent('mt-jcafeCafe:server:Tirar30dolares', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveMoney('bank', 30)
end)

RegisterNetEvent('mt-jcafeCafe:server:Tirar50dolares', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveMoney('bank', 50)
end)

-----------------------------------------------
-------- Use Drinks -------------------------

QBCore.Functions.CreateUseableItem("cafe-jcafe", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:BeberCafe', source)
        Player.Functions.RemoveItem('cafe-jcafe', 1)
    end
end)

QBCore.Functions.CreateUseableItem("latte-jcafe", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:BeberLatte', source)
        Player.Functions.RemoveItem('latte-jcafe', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bubble-amora", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:BeberBubbleTea', source)
        Player.Functions.RemoveItem('bubble-amora', 1)
    end
end)

QBCore.Functions.CreateUseableItem("yakult", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:BeberBubbleTea', source)
        Player.Functions.RemoveItem('yakult', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bubble-menta", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:BeberBubbleTea', source)
        Player.Functions.RemoveItem('bubble-menta', 1)
    end
end)

QBCore.Functions.CreateUseableItem("chuhai", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:Bebereggshake', source)
        Player.Functions.RemoveItem('chuhai', 1)
    end
end)

QBCore.Functions.CreateUseableItem("aloedrinks", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:Bebereggshake', source)
        Player.Functions.RemoveItem('aloedrinks', 1)
    end
end)


-------------------------------------------------
--------- Using Food --------------------------

QBCore.Functions.CreateUseableItem("onigiri", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerCupcake', source)
        Player.Functions.RemoveItem('onigiri', 1)
    end
end)

QBCore.Functions.CreateUseableItem("tonkatsu", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerCupcake', source)
        Player.Functions.RemoveItem('tonkatsu', 1)
    end
end)

QBCore.Functions.CreateUseableItem("ramen", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerCupcake', source)
        Player.Functions.RemoveItem('ramen', 1)
    end
end)

QBCore.Functions.CreateUseableItem("tofu", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerGelado', source)
        Player.Functions.RemoveItem('tofu', 1)
    end
end)

QBCore.Functions.CreateUseableItem("sushi", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerGelado', source)
        Player.Functions.RemoveItem('sushi', 1)
    end
end)

QBCore.Functions.CreateUseableItem("jcafepancake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerGelado', source)
        Player.Functions.RemoveItem('jcafepancake', 1)
    end
end)

QBCore.Functions.CreateUseableItem("jcafebudhabowl", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerPanqueca', source)
        Player.Functions.RemoveItem('jcafebudhabowl', 1)
    end
end)

QBCore.Functions.CreateUseableItem("misosoup", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerPanqueca', source)
        Player.Functions.RemoveItem('misosoup', 1)
    end
end)

QBCore.Functions.CreateUseableItem("muffin-chocolate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerMuffin', source)
        Player.Functions.RemoveItem('muffin-chocolate', 1)
    end
end)

QBCore.Functions.CreateUseableItem("waffle-nutela", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerWaffle', source)
        Player.Functions.RemoveItem('waffle-nutela', 1)
    end
end)

QBCore.Functions.CreateUseableItem("pastel-frango", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-jcafeCafe:client:ComerPastel', source)
        Player.Functions.RemoveItem('pastel-frango', 1)
    end
end)

------------------------------------------------
---------- Bill Player ----------------------

RegisterServerEvent("mt-jcafeCafe:server:FaturarPlayer")
AddEventHandler("mt-jcafeCafe:server:FaturarPlayer", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'jcafe' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname,
                            ['@sendercitizenid'] = biller.PlayerData.citizenid
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must be a number above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You can not bill yourself...', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'The player is not online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No access', 'error')
        end
end)

RegisterNetEvent('mt-jcafeCafe:Server:AddItem', function(item, amount)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.AddItem(item, amount)
end)