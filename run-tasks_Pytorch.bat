@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Bulut\Documents\GitHub\libraries-testing"

:: Activate the virtual environment
call myenv\Scripts\activate

::cd /d "ml"

:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o Sorting\Pytorch\Pytorch1.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch2.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch3.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch4.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch5.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch6.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch7.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch8.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch9.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch10.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch11.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch12.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch13.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch14.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch15.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch16.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch17.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch18.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch19.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch20.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch21.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch22.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch23.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch24.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch25.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch26.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch27.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch28.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch29.csv --summary python soring.py
energibridge.exe -o Sorting\Pytorch\Pytorch30.csv --summary python soring.py

pause
