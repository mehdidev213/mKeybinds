Config = {}
Config = {
    AllowKey = false, -- True pour activer l'ouverture du menu avec une touche
    KeyName = "F3", -- Nom de la touche
    AllowCommand = true, -- True pour activer l'ouverture du menu avec une commande
    CommandName = "keys", -- Nom de la commande
    BannerColor = {R = 57, G = 102, B = 57}, -- https://docs.   ivem.net/docs/game-references/hud-colors/
    Bind = {
        {Name = "Personal Menu", Desc = "Interaction menu", Bind = "F5"},
        {Name = "Keys Menu", Desc = "List of your car keys", Bind = "F2"},
        {Name = "Admin", Desc = "StaffMenu", Bind = "F1"},
    },
}