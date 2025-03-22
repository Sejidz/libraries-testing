import random

random.seed(42)

# Generate a list of 10 million random numbers between 1 and 100
list = [random.randint(1, 100_000_000) for _ in range(10_000_000)]

def pandas_sort(arr):
    import pandas as pd
    return pd.Series(arr).sort_values().values


list_sorted = pandas_sort(list)

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
