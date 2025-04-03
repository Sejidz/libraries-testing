import random

random.seed(42)

# Generate a list of 10 million random numbers between 1 and 10 000 000
list = [random.randint(1, 100_000_000) for _ in range(10_000_000)]

#built in
def builtin_sort(arr):
    return sorted(arr)

def numpy_sort(arr):
    import numpy as np
    return np.sort(arr)

def pandas_sort(arr):
    import pandas as pd
    return pd.Series(arr).sort_values().values

def pytorch_sort(arr):
    import torch
    return torch.sort(torch.tensor(arr)).values.numpy()

def tensorflow_sort(arr):
    import tensorflow as tf
    return tf.sort(arr).numpy()


#def tensorflow_sort(arr):
#    import tensorflow as tf
#    return tf.sort(arr)

#def pytorch_sort(arr):
#    import torch
#    return torch.sort(arr).values

#def cupy_sort(arr):
#    import cupy as cp
#    return cp.sort(arr)

#def dask_sort(arr):
#    import dask.array as da
#    dask_arr = da.from_array(arr, chunks=1_000_000)  # chunks determine how data is partitioned
#    sorted_dask_arr = dask_arr.sort()
#    return sorted_dask_arr.compute()

list_sorted = tensorflow_sort(list)

#get informationa bout a list
print("The length of the list is: ", len(list_sorted))
print("The first element of the list is: ", list_sorted[0])
print("The last element of the list is: ", list_sorted[-1])


# Save the list
#with open("my_list.txt", "w") as f:
#    f.write("\n".join(map(str, list_sorted)))




#sc create rapl type=kernel binPath="C:\Users\Sejid\Documents\energibridge-v0.0.7-x86_64-pc-windows-msvc"
#sc start rapl
#energibridge.exe -o results.csv --summary timeout 20
