---@meta SGG_Modding-ModUtil-Game

---@module 'SGG_Modding-ModUtil-Common'

local game = {}

-- base next, doesn't invoke __index
---@type SGG_Modding-ModUtil-Common*next
function game.rawnext( iter, key ) end

-- next that does invoke __index
---@type SGG_Modding-ModUtil-Common*next
function game.next( iter, key ) end

-- truly raw pairs, ignores __next and __pairs
---@type SGG_Modding-ModUtil-Common*pairs
function game.rawpairs( iter ) end

-- quasi-raw pairs, invokes __next but ignores __pairs
---@type SGG_Modding-ModUtil-Common*pairs
function game.qrawpairs( iter ) end

-- doesn't invoke __index just like rawnext
---@type SGG_Modding-ModUtil-Common*inext
function game.rawinext( iter, index ) end

-- invokes __inext just like the new next
---@type SGG_Modding-ModUtil-Common*inext
function game.inext( iter, index ) end

-- truly raw ipairs, ignores __inext and __ipairs
---@type SGG_Modding-ModUtil-Common*ipairs
function game.rawipairs( t ) end

-- quasi-raw ipairs, invokes __inext but ignores __ipairs
---@type SGG_Modding-ModUtil-Common*ipairs
function game.qrawipairs( t ) end

-- ignore __tostring (not thread safe?)
---@param obj any
---@return string rep
function game.rawtostring( obj ) end

---@param fn integer | function?
---@return table?
function game.getfenv( fn ) end

--[[
	Replace a function's _ENV with a new environment table.
	Global variable lookups (including function calls) in that function
	will use the new environment table rather than the normal one.
	This is useful for function-specific overrides. The new environment
	table should generally have _G as its __index (and usually __newindex),
    so that any globals other than those being deliberately overridden operate as usual.
]]
---@param fn integer | function?
---@param env table?
function game.setfenv( fn, env ) end

-- base table.insert
---@param list table
---@param value any
function game.table.rawinsert( list, value ) end

-- base table.insert
---@param list table
---@param pos integer
---@param value any
function game.table.rawinsert( list, pos, value ) end

-- table.insert that respects metamethods
---@param list table
---@param value any
function game.table.insert( list, value ) end

-- table.insert that respects metamethods
---@param list table
---@param pos integer
---@param value any
function game.table.insert( list, pos, value ) end

-- base table.remove
---@param list table
---@param pos integer?
---@return any value
function game.table.rawremove( list, pos ) end

-- table.remove that respects metamethods
---@param list table
---@param pos integer?
---@return any value
function game.table.remove( list, pos ) end

-- base table.unpack
---@generic T: any
---@param list T[]
---@param start integer?
---@param stop integer?
---@return ...
function game.table.rawunpack( list, start, stop ) end

-- table.unpack that respects metamethods
---@generic T: any
---@param list T[]
---@param start integer?
---@param stop integer?
---@return ...
function game.table.unpack( list, start, stop ) end

-- base table.rawconcat
---@param list table
---@param sep string?
---@param start integer?
---@param stop integer?
---@return string concat
function game.table.rawconcat( list, sep, start, stop ) end

-- table.concat that respects metamethods and includes more values
---@param list table
---@param sep string?
---@param start integer?
---@param stop integer?
---@return string concat
function game.table.concat( list, sep, start, stop ) end

return game