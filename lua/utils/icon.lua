local M = {}

function M.get(name)
    local i = {
        Diagnostic = '󰒡',
        DiagnosticError = '',
        DiagnosticHint = '󰌵',
        DiagnosticInfo = '󰋼',
        DiagnosticWarn = '',
        FileNew = '',
        SessionLoad = '󰑓',
        LazySync = '⏾',
        SearchFile = '󰩉',
    }
    return i[name]
end

return M
