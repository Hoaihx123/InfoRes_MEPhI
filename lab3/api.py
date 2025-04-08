from flask import Flask, jsonify, request
import sqlite3
import pandas as pd
from datetime import datetime, timedelta

app = Flask(__name__)
@app.route('/')
def index():
    return "LAB 3"

@app.route('/show', methods=['GET'])
def rows_show():
    conn = sqlite3.connect("../lab2/911.db")
    cursor = conn.cursor()
    df = pd.read_sql_query("SELECT * FROM Calls911", conn)
    conn.close()
    return jsonify(df.to_dict(orient='records'))

@app.route('/show/<int:row_id>', methods=['GET'])
def row_show_by_id(row_id):
    conn = sqlite3.connect("../lab2/911.db")
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM Calls911 WHERE id=?", [row_id])
    row = cursor.fetchone()
    columns = [column[0] for column in cursor.description]
    row_dict = dict(zip(columns, row))
    conn.close()
    return jsonify(row_dict)

@app.route('/create/', methods=['POST'])
def row_create():
    data = request.form
    conn = sqlite3.connect("../lab2/911.db")
    cursor = conn.cursor()
    cursor.execute('''INSERT INTO Calls911 
                             (lat, lng, timeStamp, title, twp) 
                             VALUES (?, ?, ?, ?, ?)''',
                   (data['lat'], data['lng'], data['timeStamp'],
                    data['title'], data['twp']))
    conn.commit()
    cursor.execute("SELECT id FROM Calls911 ORDER BY id DESC LIMIT 1")
    new_id = cursor.fetchone()[0]
    conn.close()
    return row_show_by_id(new_id)

@app.route('/update/<int:row_id>', methods=['PUT'])
def rows_update(row_id):
    data = request.form
    conn = sqlite3.connect("../lab2/911.db")
    cursor = conn.cursor()
    sql = "UPDATE Calls911 SET "+' = ?, '.join(data.keys())+' = ? WHERE id = ?'
    cursor.execute(sql, list(data.values())+[row_id])
    conn.commit()
    conn.close()
    return row_show_by_id(row_id)

@app.route('/delete/<int:row_id>', methods=['DELETE'])
def rows_delete(row_id):
    conn = sqlite3.connect("../lab2/911.db")
    cursor = conn.cursor()
    cursor.execute("DELETE FROM Calls911 WHERE id = ?", [row_id,])
    rows_affected = cursor.rowcount
    conn.commit()
    conn.close()
    return "deleted "+str(rows_affected)


@app.route('/count_calls', methods=['GET'])
def count_calls():
    date_str = request.args.get('date')
    hour = int(request.args.get('hour'))
    start_time = datetime.strptime(date_str, "%Y-%m-%d")
    start_time = start_time.replace(hour=hour, minute=0, second=0, microsecond=0)
    end_time = start_time + timedelta(hours=1)
    start_time_str = start_time.strftime("%Y-%m-%d %H:%M:%S")
    end_time_str = end_time.strftime("%Y-%m-%d %H:%M:%S")
    conn = sqlite3.connect("../lab2/911.db")
    cursor = conn.cursor()
    query = """
    SELECT COUNT(*) FROM Calls911
    WHERE timeStamp BETWEEN ? AND ?
    """
    cursor.execute(query, (start_time_str, end_time_str))
    count = cursor.fetchone()[0]
    conn.close()
    return jsonify({
        "total_calls": count,
        "from": start_time_str,
        "to": end_time_str
    })
