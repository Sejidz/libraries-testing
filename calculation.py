#import the .csv file
import pandas as pd

#read the .csv file
data = pd.read_csv('results.csv')

#Create a while loop wehere the differences between every concequent row PACKAGE_ENERGY (J) is calculated and summed up

sum_difference = 0
for i in range(1, len(data)-1):
    difference = data['PACKAGE_ENERGY (J)'][i] - data['PACKAGE_ENERGY (J)'][i-1]
    sum_difference += difference

print('The total energy is: ', sum_difference)