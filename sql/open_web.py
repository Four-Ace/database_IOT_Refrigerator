from flask import Flask, render_template
import sqlite3

app = Flask(__name__)

@app.route('/')
def showlist():
    db = sqlite3.connect('list.db')
    db.row_factory = sqlite3.Row
    items = db.execute(
        'select RID, RPW, ADRESS, AGREE from REFRIGERATOR'
    ).fetchall()

    db.close()
    return render_template('menu.html',items=items)

if __name__ == '__main__':
    app.debug=True
    app.run(host='127.0.0.1',port=5000)