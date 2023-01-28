import string, random 
print(''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(5)))