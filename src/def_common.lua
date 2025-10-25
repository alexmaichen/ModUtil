---@meta SGG_Modding-ModUtil-Common

---@alias SGG_Modding-ModUtil-Common*-nil boolean|string|number|integer|function|table|thread|userdata|lightuserdata
---@alias SGG_Modding-ModUtil-Common*-table nil|boolean|string|number|integer|function|thread|userdata|lightuserdata

---@alias SGG_Modding-ModUtil-Common*passByValueTypes number|boolean|nil
---@alias SGG_Modding-ModUtil-Common*passByReferenceTypes function|table|userdata|thread
---@alias SGG_Modding-ModUtil-Common*callableCandidateTypes function|table|userdata
---@alias SGG_Modding-ModUtil-Common*excludedFieldNames "and"|"break"|"do"|"else"|"elseif"|"end"|"false"|"for"|"function"|"if"|"in"|"local"|"nil"|"not"|"or"|"repeat"|"return"|"then"|"true"|"until"|"while"

---@generic K : SGG_Modding-ModUtil-Common*-nil
---@generic V : any
---@alias SGG_Modding-ModUtil-Common*getter fun(iter: table<K,V>, key: K): value: V?

---@generic K : SGG_Modding-ModUtil-Common*-nil
---@generic V : any
---@alias SGG_Modding-ModUtil-Common*setter fun(iter: table<K,V>, key: K, value: V)

---@generic K : SGG_Modding-ModUtil-Common*-nil
---@generic V : any
---@alias SGG_Modding-ModUtil-Common*length fun(iter: table<K,V>): length: integer

---@generic K : SGG_Modding-ModUtil-Common*-nil
---@generic V : any
---@alias SGG_Modding-ModUtil-Common*next fun(iter: table<K,V>, key: K?): key: K?, value: V?

---@generic K : SGG_Modding-ModUtil-Common*-nil
---@generic V : any
---@alias SGG_Modding-ModUtil-Common*inext fun(iter: table<K,V>, index: integer?): index: integer?, value: V?

---@generic K : SGG_Modding-ModUtil-Common*-nil
---@generic V : any
---@alias SGG_Modding-ModUtil-Common*pairs fun(iter: table<K,V>): next: SGG_Modding-ModUtil-Common*next<K,V>, iter: table<K,V>

---@generic K : SGG_Modding-ModUtil-Common*-nil
---@generic V : any
---@alias SGG_Modding-ModUtil-Common*ipairs fun(iter: table<K,V>): inext: SGG_Modding-ModUtil-Common*inext<K,V>, iter: table<K,V>
