import pandas as pd
import sqlite3
import matplotlib.pyplot as plt

print("Задание b")
df = pd.read_csv("911.csv")
df = df[['lat', 'lng', 'title', 'timeStamp', 'twp']][:1000]
conn = sqlite3.connect("911.db")
df.to_sql("Calls911", conn, if_exists="append", index=False)
for x in conn.execute('SELECT count(*) FROM Calls911'):
    print(x)
conn.close()

print('---------------------')
print("Задание c")
df.dropna(inplace=True)
df = df[(df['lat'] >= -90) & (df['lat'] <= 90) & (df['lng'] >= -180) & (df['lng'] <= 180)]
print(df.shape)

print('---------------------')
print("Задание d")
town_counts = df['twp'].value_counts()
print(town_counts)

print('---------------------')
print("Задание e")
town_counts = df['twp'].value_counts()
q10, q90 = town_counts.quantile([0.1, 0.9])
df_filtered = df[df['twp'].map(town_counts) > 5]
df_filtered = df_filtered[(df_filtered['twp'].map(town_counts) > q10) &
                          (df_filtered['twp'].map(town_counts) < q90)]

sorted_counts = town_counts.sort_values().values
gaps = sorted_counts[1:] - sorted_counts[:-1]
threshold = 0.1 * (sorted_counts[-1] - sorted_counts[0])
extreme_indexes = (gaps > threshold).nonzero()[0]

if len(extreme_indexes) > 0:
    extreme_values = sorted_counts[extreme_indexes]
    df_filtered = df_filtered[~df_filtered['twp'].map(town_counts).isin(extreme_values)]
print(df_filtered.shape)

print('---------------------')

df_filtered['timeStamp'] = pd.to_datetime(df_filtered['timeStamp'])

df_filtered['timeStamp'].dt.hour.value_counts().sort_index().plot(kind='bar', figsize=(12,6), color='blue', alpha=0.7)
plt.xlabel("Час стуток")
plt.ylabel("Число обращений 911")
plt.title("Задание f")
plt.show()

print('---------------------')
print("Задание g")

corr = df_filtered['timeStamp'].dt.hour.value_counts().corr(df_filtered['timeStamp'].dt.hour)
print(f"Коэф.коррел: {corr}")