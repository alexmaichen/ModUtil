---@meta SGG_Modding-ModUtil-Common

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
