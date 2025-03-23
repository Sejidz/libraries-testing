@echo off

:: Set the directory to the specified path
cd /d "C:\Users\Bulut\Documents\GitHub\libraries-testing\Np"


:: Start the rapl service
sc start rapl


:: Run the command 30 times with different filenames

energibridge.exe -o numpy1.csv --summary python sorting_np.py
energibridge.exe -o numpy2.csv --summary python sorting_np.py
energibridge.exe -o numpy3.csv --summary python sorting_np.py
energibridge.exe -o numpy4.csv --summary python sorting_np.py
energibridge.exe -o numpy5.csv --summary python sorting_np.py
energibridge.exe -o numpy6.csv --summary python sorting_np.py
energibridge.exe -o numpy7.csv --summary python sorting_np.py
energibridge.exe -o numpy8.csv --summary python sorting_np.py
energibridge.exe -o numpy9.csv --summary python sorting_np.py
energibridge.exe -o numpy10.csv --summary python sorting_np.py
energibridge.exe -o numpy11.csv --summary python sorting_np.py
energibridge.exe -o numpy12.csv --summary python sorting_np.py
energibridge.exe -o numpy13.csv --summary python sorting_np.py
energibridge.exe -o numpy14.csv --summary python sorting_np.py
energibridge.exe -o numpy15.csv --summary python sorting_np.py
energibridge.exe -o numpy16.csv --summary python sorting_np.py
energibridge.exe -o numpy17.csv --summary python sorting_np.py
energibridge.exe -o numpy18.csv --summary python sorting_np.py
energibridge.exe -o numpy19.csv --summary python sorting_np.py
energibridge.exe -o numpy20.csv --summary python sorting_np.py
energibridge.exe -o numpy21.csv --summary python sorting_np.py
energibridge.exe -o numpy22.csv --summary python sorting_np.py
energibridge.exe -o numpy23.csv --summary python sorting_np.py
energibridge.exe -o numpy24.csv --summary python sorting_np.py
energibridge.exe -o numpy25.csv --summary python sorting_np.py
energibridge.exe -o numpy26.csv --summary python sorting_np.py
energibridge.exe -o numpy27.csv --summary python sorting_np.py
energibridge.exe -o numpy28.csv --summary python sorting_np.py
energibridge.exe -o numpy29.csv --summary python sorting_np.py
energibridge.exe -o numpy30.csv --summary python sorting_np.py

pause
