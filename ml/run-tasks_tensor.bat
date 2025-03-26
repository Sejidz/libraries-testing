@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Bulut\Documents\GitHub\libraries-testing"

:: Activate the virtual environment
call myenv\Scripts\activate

cd /d "ml"


:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o tensor\tensor1.csv --summary python tensor.py
energibridge.exe -o tensor\tensor2.csv --summary python tensor.py
energibridge.exe -o tensor\tensor3.csv --summary python tensor.py
energibridge.exe -o tensor\tensor4.csv --summary python tensor.py
energibridge.exe -o tensor\tensor5.csv --summary python tensor.py
energibridge.exe -o tensor\tensor6.csv --summary python tensor.py
energibridge.exe -o tensor\tensor7.csv --summary python tensor.py
energibridge.exe -o tensor\tensor8.csv --summary python tensor.py
energibridge.exe -o tensor\tensor9.csv --summary python tensor.py
energibridge.exe -o tensor\tensor10.csv --summary python tensor.py
energibridge.exe -o tensor\tensor11.csv --summary python tensor.py
energibridge.exe -o tensor\tensor12.csv --summary python tensor.py
energibridge.exe -o tensor\tensor13.csv --summary python tensor.py
energibridge.exe -o tensor\tensor14.csv --summary python tensor.py
energibridge.exe -o tensor\tensor15.csv --summary python tensor.py
energibridge.exe -o tensor\tensor16.csv --summary python tensor.py
energibridge.exe -o tensor\tensor17.csv --summary python tensor.py
energibridge.exe -o tensor\tensor18.csv --summary python tensor.py
energibridge.exe -o tensor\tensor19.csv --summary python tensor.py
energibridge.exe -o tensor\tensor20.csv --summary python tensor.py
energibridge.exe -o tensor\tensor21.csv --summary python tensor.py
energibridge.exe -o tensor\tensor22.csv --summary python tensor.py
energibridge.exe -o tensor\tensor23.csv --summary python tensor.py
energibridge.exe -o tensor\tensor24.csv --summary python tensor.py
energibridge.exe -o tensor\tensor25.csv --summary python tensor.py
energibridge.exe -o tensor\tensor26.csv --summary python tensor.py
energibridge.exe -o tensor\tensor27.csv --summary python tensor.py
energibridge.exe -o tensor\tensor28.csv --summary python tensor.py
energibridge.exe -o tensor\tensor29.csv --summary python tensor.py
energibridge.exe -o tensor\tensor30.csv --summary python tensor.py

pause
