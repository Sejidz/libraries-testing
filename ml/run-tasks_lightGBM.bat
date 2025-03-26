@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Bulut\Documents\GitHub\libraries-testing"

:: Activate the virtual environment
call myenv\Scripts\activate

cd /d "ml"


:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o lightGBM\lightGBM1.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM2.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM3.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM4.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM5.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM6.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM7.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM8.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM9.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM10.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM11.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM12.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM13.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM14.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM15.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM16.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM17.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM18.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM19.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM20.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM21.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM22.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM23.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM24.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM25.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM26.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM27.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM28.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM29.csv --summary python lightGBM.py
energibridge.exe -o lightGBM\lightGBM30.csv --summary python lightGBM.py

pause
