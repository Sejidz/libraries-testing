@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Bulut\Documents\GitHub\libraries-testing"

:: Activate the virtual environment
call myenv\Scripts\activate

::cd /d "ml"

:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o Sorting\Tensorflow\tensorflow1.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow2.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow3.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow4.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow5.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow6.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow7.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow8.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow9.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow10.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow11.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow12.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow13.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow14.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow15.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow16.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow17.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow18.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow19.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow20.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow21.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow22.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow23.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow24.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow25.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow26.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow27.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow28.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow29.csv --summary python soring.py
energibridge.exe -o Sorting\Tensorflow\tensorflow30.csv --summary python soring.py

pause
