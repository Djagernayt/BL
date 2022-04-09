import hashlib
import uuid

uniqConsam = str(input())
b = hash(uniqConsam)
b = str(abs(b))

def Key(password):
    # uuid используется для генерации случайного числа
    salt = uuid.uuid4().hex
    return hashlib.sha256(salt.encode() + password.encode()).hexdigest() + ':' + salt
print(Key(b))
# def check_Key(hashed_password, user_password):
#     password, salt = hashed_password.split(':')
#     return password == hashlib.sha256(salt.encode() + user_password.encode()).hexdigest()
# print(check_Key(Key(b),b))


