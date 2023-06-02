local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1096860028377505894/vcYzLhybkUY7mSyqF92hx4ZRCJYleKYU9g7rBVqDeqa7MJVtvkm082lbofssECGHAoNG',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1096860219277062204/dozx8sSkQqmnK7u4nzVMtZt208QdzxtTph900vkdfaX24FE0MZwZ2r5r9GNWMK7_H6RA',
    ['playermoney'] = 'https://discord.com/api/webhooks/1096860274360860912/lLOfVKMb1lxYuOQiAMg8zS6PMtdhKTxvmq25KY85TZsShTkmLK3Slq30Nyb_EDMI1xUJ',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1096860376437629010/8zLH6AU6J3okHKUL8V5gVcBoiQ2NZBlNBNnw6XPDIjZ3GJRVxYbE7Zgz5s_XvAiynN_j',
    ['robbing'] = 'https://discord.com/api/webhooks/1096860503214653480/yZR_1-V3jmcH94sEnipOXzAUhlGUsC7GKhwpiIMQY7mPNlu99DzOW8vdS3hb5foa4Gvf',
    ['cuffing'] = 'https://discord.com/api/webhooks/1096860629194776697/9cnI6X5T2P4TtnRVO4GFRKf_h_EpErO1Op8TrKLwuy55YstIfnwAnIWvRCHaTOzYzsa1',
    ['drop'] = 'https://discord.com/api/webhooks/1096860732970246225/xTj3npl983qFyfSeEVtU3p1IG-iCCNmkrjvn6J4-PPt1ILxJw7FKvEurkTkxUknWQEM2',
    ['trunk'] = 'https://discord.com/api/webhooks/1096860849810985051/SbaEdiZDuUOrR8KsoGtr77J5r0AEMwc01h3Qqulu3HA-X8Ov7FaVMDnfjP5csCPV0WLu',
    ['stash'] = 'https://discord.com/api/webhooks/1096860941699788800/3VS4u7313JZIIW7iygZz1ujcUhhfOVLOOcCMY8DbVp2tZBJAcmZvF8lKyGGhXWmcuwFI',
    ['glovebox'] = 'https://discord.com/api/webhooks/1096861046716776639/1BOAqz8zDeijlR5VCOVeqM6S4eRCgtdVVTULOgcfHffGsRdpcyef-AolLUii9sEnnClL',
    ['banking'] = 'https://discord.com/api/webhooks/1096861286911967262/R8IdQ1pteHW2NWEqQ6yi1_Mryr0X3CxRVzMtktn_SrXY3lK_2egB0JimUpSd2S1NXZmL',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1096861224211320843/tAsmcda7CD7T6YKBx_9IuSKkMGwQQhJfw2mMMJna5vsfHaLU-K506-4s6FNFZtuJBxeY',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1096861391987671100/NRvGE3aGAdouI5HRVIPTw5bUy3B6s9yD3iqkNyxopyjD33fBLT0XJ8Ofye0xxeqT4K-o',
    ['shops'] = 'https://discord.com/api/webhooks/1096861516571082882/cvTd_ReHs9ZPBjWtpkbQB0OdBnTiYGHbK_LQU2QZP3jHcbt7jaMRDLUS9MVtmtFLTt0v',
    ['dealers'] = 'https://discord.com/api/webhooks/1096861617838379079/D_uz8BRzItJwmjruruXBEhPmGq4BeB_c6QJFWsGTOJ0kT1V4KYn22upQqUk2wHjpyWHh',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1096861723710988358/j-DLDgN8X24onOaoeRoZjXnLBEV-UqH43l5M9H1HOy987NnAVQNZDPJZvJoS2ezPh1we',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1096861827591311410/lmr3alWImT5Q6Lyfx0vKdqW0eKUb0Rm-gtz9asEk1TFMClmQcJbTvaXdpYq5wt9vW0F1',
    ['powerplants'] = 'https://discord.com/api/webhooks/1096861941986775155/1WzQF1DLQWpBCnW70pL2njuMNqduG4T3Vd5qY-ZY8Ae9aJea1H7U1NLBwioYXGOKkFer',
    ['death'] = 'https://discord.com/api/webhooks/1096862057074270249/8dSaYzXOUxss2QJKGhKChwck7KipfzExz0cPgA5WRTEOWj9vCEjjRdKI6LhKqrIlXVhg',
    ['joinleave'] = 'https://discord.com/api/webhooks/1096862155514593391/nHWELYdBJOmeeKTqZzeGmvbAw8VDtAG3Os2tTvVvXKFUw3dfNidgHdlsyPOETDZjRQpZ',
    ['ooc'] = 'https://discord.com/api/webhooks/1096862252856004671/hTz0MVuD2G5ajzEqQS_LBca9Uctkn_ZzsfbHSguSsDxT4_l8m_Lgz95rrAalosQ9ULuO',
    ['report'] = 'https://discord.com/api/webhooks/1096862412319232131/ZgvGcogC_pjFu10i7W1SCB-ZmQ6D-Ah6p6xJUEH89HXHOhTXXaNBS77Rb-5kSoPl9OZb',
    ['me'] = 'https://discord.com/api/webhooks/1096862542011318352/XR6ddtnyE7A1r3fQCg4aQBMwEiYuDBKftkva8KSE-1DEC77jskksZVweHdbYQ8qzzYuv',
    ['pmelding'] = 'https://discord.com/api/webhooks/1096862668159201390/wmyG5MSAdKRZl2vlFAUJzh7ji35MeelQKNr0R70dARPKwp__Z-H1ij0rV6HePeW3UE3T',
    ['112'] = 'https://discord.com/api/webhooks/1096862762417787001/YAXrQ8JYM6a7duZdYHVHin__3bobD6pX9HJJNM_V8Fi04ZI6_IzD1T2P-v2ogwpP9UDS',
    ['bans'] = 'https://discord.com/api/webhooks/1096862857766895778/yPXl5Vb2w174SMJgv0NtkW8KP-dLB1UFzuMyofwEcTapE5QhIdAk0TRr4OCZOjgbGG2g',
    ['anticheat'] = 'https://discord.com/api/webhooks/1096863541144866857/WHJCleoJVmpl-x69BOaqs6TlNMzJahhbLbyiAWZ52xrcBgG34zI7c7oe4WxymVuxtlcm',
    ['weather'] = 'https://discord.com/api/webhooks/1096863633365016628/7QwEnpL9eRuwFsTdcxeeD8qyh1F1Gjoq4LtWH4gEJjsxslbKmv73mz-KIuq6Mz_NxVs8',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1096863726839283743/-Az5E5AqzNxVTDjWQHpiLArMK8JuvCqzPDRIsumzfiKMYhlCFjNhgk5ggdLAH428mm62',
    ['bennys'] = 'https://discord.com/api/webhooks/1096863824541384825/AVrHvGoBbkJshTfPNf6cnZP2KWysktLoGyfpw3K9ab8YXEceI91-Zqa2WzFI3pQt3am2',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1096863912072327378/hKKYPgcmUymIjGCIIhuWVEHxkjDcOBLyEtL7yy5tMZ4gYPdPM0i1L-4bziag1g0g_hzW',
    ['robbery'] = 'https://discord.com/api/webhooks/1096864003239718943/8utxhFJmPstk_mUNliC77GJYws621ruCkdF5FF1lCL3AZ_0SuGiCEMgQ1U1sPfp3hB4V',
    ['casino'] = 'https://discord.com/api/webhooks/1096864092234457109/nbu1_wPR31fyQD_vHEDR9v3DjwpkkQ5-tffgypG1FxiQ2X1rRCU6SNrWqpBcNHJG91ny',
    ['traphouse'] = 'https://discord.com/api/webhooks/1096864185226375240/e3L4CGS4wGOVPqQMgP_HiuLxFp9R75NsADVVAVGsvus7gI6YiSSiwo48mXJnDSDGkj4F',
    ['911'] = 'https://discord.com/api/webhooks/1096864284199358528/CHFsV18rtLiDMgJLOD4l9PBi22QEbgS9RQxumtykaheQ8Aj4z8AlAKKp5Rwxjj78xu8D',
    ['palert'] = 'https://discord.com/api/webhooks/1096864378898370591/KF_D69FPF-knB9X3kVBbYfEB3Mgo2h1d32IYu29EZgfOalA09ijS0xrF75IEirzSsm65',
    ['house'] = 'https://discord.com/api/webhooks/1096864464181141594/3QcWki1tOTJDxNZWum0B6Wpm5xQGIh4FQAfFUghVu2fltS2L1WW2-NvJP3s7gnvxXEGu',
    ['qbjobs'] = 'https://discord.com/api/webhooks/1096864556657164388/Y1Wg7N7WcZaTc1GdNmCbh2L6mXn__xZ8UwejZymm8Ucn59AhGd3idJSHVhD8uEwkZosU',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
