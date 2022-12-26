a = True
b = False
c = False
d = True

if ((a and b) ^ (c and d)):
    print("1");
elif ((a and b) or (c and d)):
    print("2");
elif ((a or b) and (c and d)):
    print("3");
elif ((a ^ b) ^ (c or d)):
    print("4");
elif ((a or b) and (c ^ d)):
    print("5");