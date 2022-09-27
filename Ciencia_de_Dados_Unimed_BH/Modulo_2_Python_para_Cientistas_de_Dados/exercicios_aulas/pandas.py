import pandas as pd


url1 = 'https://raw.githubusercontent.com/Muralimekala/python/master/Resp2.csv'
df1 = pd.read_csv(url1)
df1.head()

url2 = 'https://raw.githubusercontent.com/Muralimekala/python/master/Salaries.csv'
sf = pd.read_csv(url2)
sf.head()

