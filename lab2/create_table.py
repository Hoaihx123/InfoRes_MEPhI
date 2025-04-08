import sqlite3

conn = sqlite3.connect("911.db")
cursor = conn.cursor()
cursor.execute('''
CREATE TABLE IF NOT EXISTS Calls911 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    lat REAL,
    lng REAL,
    title TEXT,
    timeStamp TEXT,
    twp TEXT
    )
''')
conn.commit()
conn.close()