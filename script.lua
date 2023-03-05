local api = {}

local api.Spoofs = {}

function api.Spoofs.SpoofValue(valueName, returnValue)
    local mt = getrawmetatable(game)
    setreadonly(mt, false)
    local old_index = mt.__index   
    mt.__index = function(a,b)
        if tostring(a) == valueName then
            if tostring(b) == "Value" then
              return returnValue
            end
        end
        return old_index(a,b)
    end
end

return api
