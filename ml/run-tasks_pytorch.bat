@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Bulut\Documents\GitHub\libraries-testing"

:: Activate the virtual environment
call myenv\Scripts\activate

cd /d "ml"


:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o pytorch\pytorch1.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch2.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch3.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch4.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch5.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch6.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch7.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch8.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch9.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch10.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch11.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch12.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch13.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch14.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch15.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch16.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch17.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch18.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch19.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch20.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch21.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch22.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch23.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch24.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch25.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch26.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch27.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch28.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch29.csv --summary python pytorch.py
energibridge.exe -o pytorch\pytorch30.csv --summary python pytorch.py

pause
