from flask import Flask, render_template
import sqlite3

app = Flask(__name__)

@app.route('/')
def showlist():
    db = sqlite3.connect('list.db')
    db.row_factory = sqlite3.Row
    items = db.execute(
        'select PNAME,PRICE,PDATE from PRODUCT where PNAME like \'%냉장%\''
    ).fetchall()
    return render_template('product.html',items=items)

if __name__ == '__main__':
    app.debug=True
    app.run(host='127.0.0.1',port=5000)