@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Bulut\Documents\GitHub\libraries-testing"

:: Activate the virtual environment
call myenv\Scripts\activate

::cd /d "ml"

:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o xgbost\xgbost1.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost2.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost3.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost4.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost5.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost6.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost7.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost8.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost9.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost10.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost11.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost12.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost13.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost14.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost15.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost16.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost17.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost18.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost19.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost20.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost21.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost22.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost23.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost24.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost25.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost26.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost27.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost28.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost29.csv --summary python xgbost.py
energibridge.exe -o xgbost\xgbost30.csv --summary python xgbost.py

pause
