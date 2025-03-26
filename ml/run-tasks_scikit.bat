@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Bulut\Documents\GitHub\libraries-testing"

:: Activate the virtual environment
call myenv\Scripts\activate

cd /d "ml"


:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o scikit\scikit1.csv --summary python scikit.py
energibridge.exe -o scikit\scikit2.csv --summary python scikit.py
energibridge.exe -o scikit\scikit3.csv --summary python scikit.py
energibridge.exe -o scikit\scikit4.csv --summary python scikit.py
energibridge.exe -o scikit\scikit5.csv --summary python scikit.py
energibridge.exe -o scikit\scikit6.csv --summary python scikit.py
energibridge.exe -o scikit\scikit7.csv --summary python scikit.py
energibridge.exe -o scikit\scikit8.csv --summary python scikit.py
energibridge.exe -o scikit\scikit9.csv --summary python scikit.py
energibridge.exe -o scikit\scikit10.csv --summary python scikit.py
energibridge.exe -o scikit\scikit11.csv --summary python scikit.py
energibridge.exe -o scikit\scikit12.csv --summary python scikit.py
energibridge.exe -o scikit\scikit13.csv --summary python scikit.py
energibridge.exe -o scikit\scikit14.csv --summary python scikit.py
energibridge.exe -o scikit\scikit15.csv --summary python scikit.py
energibridge.exe -o scikit\scikit16.csv --summary python scikit.py
energibridge.exe -o scikit\scikit17.csv --summary python scikit.py
energibridge.exe -o scikit\scikit18.csv --summary python scikit.py
energibridge.exe -o scikit\scikit19.csv --summary python scikit.py
energibridge.exe -o scikit\scikit20.csv --summary python scikit.py
energibridge.exe -o scikit\scikit21.csv --summary python scikit.py
energibridge.exe -o scikit\scikit22.csv --summary python scikit.py
energibridge.exe -o scikit\scikit23.csv --summary python scikit.py
energibridge.exe -o scikit\scikit24.csv --summary python scikit.py
energibridge.exe -o scikit\scikit25.csv --summary python scikit.py
energibridge.exe -o scikit\scikit26.csv --summary python scikit.py
energibridge.exe -o scikit\scikit27.csv --summary python scikit.py
energibridge.exe -o scikit\scikit28.csv --summary python scikit.py
energibridge.exe -o scikit\scikit29.csv --summary python scikit.py
energibridge.exe -o scikit\scikit30.csv --summary python scikit.py

pause
