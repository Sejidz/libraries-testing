@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Bulut\Documents\GitHub\libraries-testing\Pd"


:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o pandas1.csv --summary python sorting_pd.py
energibridge.exe -o pandas2.csv --summary python sorting_pd.py
energibridge.exe -o pandas3.csv --summary python sorting_pd.py
energibridge.exe -o pandas4.csv --summary python sorting_pd.py
energibridge.exe -o pandas5.csv --summary python sorting_pd.py
energibridge.exe -o pandas6.csv --summary python sorting_pd.py
energibridge.exe -o pandas7.csv --summary python sorting_pd.py
energibridge.exe -o pandas8.csv --summary python sorting_pd.py
energibridge.exe -o pandas9.csv --summary python sorting_pd.py
energibridge.exe -o pandas10.csv --summary python sorting_pd.py
energibridge.exe -o pandas11.csv --summary python sorting_pd.py
energibridge.exe -o pandas12.csv --summary python sorting_pd.py
energibridge.exe -o pandas13.csv --summary python sorting_pd.py
energibridge.exe -o pandas14.csv --summary python sorting_pd.py
energibridge.exe -o pandas15.csv --summary python sorting_pd.py
energibridge.exe -o pandas16.csv --summary python sorting_pd.py
energibridge.exe -o pandas17.csv --summary python sorting_pd.py
energibridge.exe -o pandas18.csv --summary python sorting_pd.py
energibridge.exe -o pandas19.csv --summary python sorting_pd.py
energibridge.exe -o pandas20.csv --summary python sorting_pd.py
energibridge.exe -o pandas21.csv --summary python sorting_pd.py
energibridge.exe -o pandas22.csv --summary python sorting_pd.py
energibridge.exe -o pandas23.csv --summary python sorting_pd.py
energibridge.exe -o pandas24.csv --summary python sorting_pd.py
energibridge.exe -o pandas25.csv --summary python sorting_pd.py
energibridge.exe -o pandas26.csv --summary python sorting_pd.py
energibridge.exe -o pandas27.csv --summary python sorting_pd.py
energibridge.exe -o pandas28.csv --summary python sorting_pd.py
energibridge.exe -o pandas29.csv --summary python sorting_pd.py
energibridge.exe -o pandas30.csv --summary python sorting_pd.py

pause
