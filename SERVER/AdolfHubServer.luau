local adolf = {count = 0, queue = {}, callbacks = {}, rainbowtable = {}, toggled = true, binds = {}};
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/necobuba/adolfhub/main/SERVER/AdolfHubUI.luau", true))()
-------------------------------------------------------------------------------------------------------------------------------------------
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--CORE-------------------------------------------------------
function adolf.makeui(name)
    return{
        library:CreateWindow(name)
    }
end
-------------------------------------------------------------
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Game, Local------------------------------------------------
function adolf.TopText(window,name)
    return{
        window:Section(name)
    }

end

function adolf.Toggle(window, name, flagi, func)
    window:Toggle(name, {flag = flagi}, func)
end

function adolf.Slider(window, name, flagi, minimum, maximum, func)
    window:Slider(name, {min = minimum, max = maximum, flag = flagi}, func)
end

function adolf.SelectValue(window, name, flagi, liste, func)
    window:Dropdown(name, {flag = flagi, list = liste}, func)
end

function adolf.Buton(window, name, func)
    window:Button(name, func)
end

function adolf.KeyBind(window, name, flagi, kbonlys, bind, func)
    window:Bind(name, {flag = flagi, kbonly = kbonlys, default = bind}, func)
end

function adolf.Kutu(window, name, flagi, tip, func)
    window:Box(name, {flag = flagi, type = tip}, func)
end

function adolf.SearchFunc(window, flagi, listi, func)
    window:SearchBox(name, {flag = flagi, list = listi}, func)
end

--------------------------------------------------------------------------------------------------------------------------------------------
return adolf