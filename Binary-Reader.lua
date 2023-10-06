local function decryp(binaryCode)
  local binaryValues = {}
  for value in binaryCode:gmatch("%S+") do
    table.insert(binaryValues, value)
  end
  local text = ""
  for _, binaryValue in ipairs(binaryValues) do
    local decimalValue = tonumber(binaryValue, 2)
    local char = string.char(decimalValue)
    text = text .. char
  end
  return text
end

--| Example Usage |--
pcall(load(decryp("01110000 01110010 01101001 01101110 01110100 00101000 00100010 01001000 01100101 01101100 01101100 01101111 00101100 00100000 01010111 01101111 01110010 01100100 00100010 00101001")))
