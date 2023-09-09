import pandas as pd
import glob

dir="/home/juanjogamez/script_prueba/F1_CSV/*"
files=glob.glob(dir)

print(str(len(files)) + " files have been found \n")

for file in files:
    data=pd.read_csv(file)
    print("##FIRST COLUMN OF THE FILE## \n")
    print(data.iloc[:,1])
    print('\n')

    print("##DESCRIBE## \n")
    print(data.describe())
    print('\n')
    
    
