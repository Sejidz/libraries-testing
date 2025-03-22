@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Sejid\Documents\energibridge-v0.0.7-x86_64-pc-windows-msvc"


:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o built_in1.csv --summary python sorting_bi.py
energibridge.exe -o built_in2.csv --summary python sorting_bi.py
energibridge.exe -o built_in3.csv --summary python sorting_bi.py
energibridge.exe -o built_in4.csv --summary python sorting_bi.py
energibridge.exe -o built_in5.csv --summary python sorting_bi.py
energibridge.exe -o built_in6.csv --summary python sorting_bi.py
energibridge.exe -o built_in7.csv --summary python sorting_bi.py
energibridge.exe -o built_in8.csv --summary python sorting_bi.py
energibridge.exe -o built_in9.csv --summary python sorting_bi.py
energibridge.exe -o built_in10.csv --summary python sorting_bi.py
energibridge.exe -o built_in11.csv --summary python sorting_bi.py
energibridge.exe -o built_in12.csv --summary python sorting_bi.py
energibridge.exe -o built_in13.csv --summary python sorting_bi.py
energibridge.exe -o built_in14.csv --summary python sorting_bi.py
energibridge.exe -o built_in15.csv --summary python sorting_bi.py
energibridge.exe -o built_in16.csv --summary python sorting_bi.py
energibridge.exe -o built_in17.csv --summary python sorting_bi.py
energibridge.exe -o built_in18.csv --summary python sorting_bi.py
energibridge.exe -o built_in19.csv --summary python sorting_bi.py
energibridge.exe -o built_in20.csv --summary python sorting_bi.py
energibridge.exe -o built_in21.csv --summary python sorting_bi.py
energibridge.exe -o built_in22.csv --summary python sorting_bi.py
energibridge.exe -o built_in23.csv --summary python sorting_bi.py
energibridge.exe -o built_in24.csv --summary python sorting_bi.py
energibridge.exe -o built_in25.csv --summary python sorting_bi.py
energibridge.exe -o built_in26.csv --summary python sorting_bi.py
energibridge.exe -o built_in27.csv --summary python sorting_bi.py
energibridge.exe -o built_in28.csv --summary python sorting_bi.py
energibridge.exe -o built_in29.csv --summary python sorting_bi.py
energibridge.exe -o built_in30.csv --summary python sorting_bi.py

pause
