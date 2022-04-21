from base64 import encode
import sha3
import os

print("Keccak 256 di python\n")
namalengkap = input("Masukan Nama Kepanjangan: ")
os.system('CLS')
print("Nama Lengkap: \n", namalengkap)
encoded = namalengkap.encode()
obj_encoded = sha3.keccak_256(encoded)
print("Nama Lengkap Sesudah Hash Keccak 256: \n", obj_encoded.hexdigest())
