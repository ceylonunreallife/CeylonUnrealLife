

Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("jcafe-servico", vector3(-173.39, 294.1, 93.76), 1, 1, {
        name = "jcafe-servico",
        heading = 0,
        debugpoly = false,
        minZ=90.36,
        maxZ=94.36,
    }, {
        options = {
            {  
            event = "mt-jcafeCafe:client:Servico",
            icon = "far fa-clipboard",
            label = "Clock in/out",
            job = "jcafe",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("jcafe-balcao", vector3(-587.59, -1059.67, 22.5), 1.6, 3.6, {
        name="jcafe-balcao",
        heading=89,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-jcafeCafe:client:Balcao",
            icon = "far fa-clipboard",
            label = "Counter",
            },
        },
        distance = 3.5
    })

    exports['qb-target']:AddBoxZone("jcafe-tabuleiro1", vector3(-171.35, 295.04, 93.76), 0.6, 0.6, {
        name = "jcafe-tabuleiro1",
        heading = 0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-jcafeCafe:client:Tabuleiro1",
            icon = "far fa-clipboard",
            label = "Board",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("jcafe-tabuleiro2", vector3(-163.09, 293.88, 93.76), 2, 3, {
        name="jcafe-tabuleiro2",
        heading=270,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-jcafeCafe:client:Tabuleiro1",
            icon = "far fa-clipboard",
            label = "Board",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("jcafe-frigorifico", vector3(-177.44, 306.57, 97.46), 1, 2, {
        name="jcafe-frigorifico",
        heading=89.0,
        debugpoly = false,
    }, {
            options = {
                {
                    event = "mt-jcafeCafe:client:FrigorificoComida",
                    icon = "fas fa-laptop",
                    label = "Food Fridge",
                    job = "jcafe",
                },
                {
                    event = "mt-jcafeCafe:client:FrigorificoIngredientes",
                    icon = "fas fa-laptop",
                    label = "Ingredients Fridge",
                    job = "jcafe",
                },
            },
            distance = 1.5
        })

    exports['qb-target']:AddBoxZone("jcafe-fogao", vector3(-177.84, 304.02, 97.46), 1, 2, {
        name="jcafe-fogao",
        heading=91.25,
        debugPoly=false,

    }, {
            options = {
                {
                    event = "mt-jcafeCafe:client:MenuComidas",
                    icon = "fas fa-rocket",
                    label = "Use Stove",
                    job = "jcafe",
                },
            },
            distance = 1.5
        })

    exports['qb-target']:AddBoxZone("jcafe-ementa1", vector3(-171.08, 295.84, 93.76), 0.5, 0.5, {
        name="jcafe-ementa1",
        debugpoly = false,
        heading=270,
    }, {
            options = {
                {
                    event = "mt-jcafeCafe:client:VerEmenta",
                    icon = "fas fa-clipboard",
                    label = "See Menu",
                },
                {
                    event = "mt-jcafeCafe:client:FaturarPlayer",
                    icon = "fas fa-clipboard",
                    label = "Bill Player",
                    job = "jcafe",
                },
            },
            distance = 1.5
        })

    exports['qb-target']:AddBoxZone("jcafe-ementa2", vector3(-584.25, -1061.5, 22.37), 0.6, 0.5, {
        name="jcafe-ementa2",
        debugpoly = false,
        heading=270,
        }, {
                options = {
                    {
                        event = "mt-jcafeCafe:client:VerEmenta",
                        icon = "fas fa-clipboard",
                        label = "See Menu",
                    },
                    {
                        event = "mt-jcafeCafe:client:FaturarPlayer",
                        icon = "fas fa-clipboard",
                        label = "Bill Player",
                        job = "jcafe",
                    },
                },
                distance = 1.5
            })
            
    exports['qb-target']:AddTargetModel(`a_c_cat_01`, {
        options = {
            {
                event = "mt-jcafeCafe:client:AcariciarGato",
                icon = "fas fa-cat",
                label = "Caress cat",
            },
        },
        distance = 2.0
    })
    
    exports['qb-target']:AddBoxZone("jcafe-bebidas", vector3(-171.59, 307.97, 97.99), 1, 2, {
        name="jcafe-bebidas",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "mt-jcafeCafe:client:MenuBebidas",
            icon = "far fa-coffee",
            label = "Use Coffe Machine",
            job = "jcafe",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("jcafe-roupas", vector3(-585.91, -1050.11, 22.36), 1.5, 1, {
        name="jcafe-roupas",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-clothing:client:openOutfitMenu",
            icon = "far fa-tshirt",
            label = "Change Clothes",
            },
        },
        distance = 1.5
    })
end)