local openssl = require'openssl'
local digest = require'openssl'.digest

local eng = assert(openssl.engine('openssl'))
assert(eng:id(),'openssl')
assert(eng:set_default('RSA'))
assert(eng:set_default('ECDSA'))

local msg = 'The quick brown fox jumps over the lazy dog.'
print(msg)
print("HEX:", openssl.hex(msg))
print("B64:", openssl.base64(msg))
print("SHA1", digest.digest("sha1",msg))
print("SHA256", digest.digest("sha256",msg))