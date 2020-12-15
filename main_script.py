from flask import Flask, redirect, url_for, request, render_template, g
import sqlite3

app = Flask(__name__)

conn = sqlite3.connect('list.db')
print ("Opened database successfully")
conn.close()


def connect_db():
    sql = sqlite3.connect('list.db')
    sql.row_factory = sqlite3.Row
    return sql

def get_db():
    if not hasattr(g,'sqlite3'):
        g.sqlite3_db = connect_db()
    return g.sqlite3_db

# 데이터베이스에서 ID와 PW를 열람하고 일치하는지 확인
def match_ID(_SID,_SPW):
    db = get_db()
    cursor = db.execute('SELECT SID,SPW FROM SUPPLIER WHERE SID =' + _SID)
    results = cursor.fetchall()
    if results is not None:
        if(int(results[0]['SPW']) == int(_SPW)):
            return 1
    return 0    

@app.teardown_appcontext
def close_de(error):
    if hasattr(g,'sqlite_db'):
        g.sqlite_db.close()

@app.route('/fail/<name>')
def fail():
    return render_template('fail_page.html')

def showlist(user):
    db = sqlite3.connect('list.db')
    db.row_factory = sqlite3.Row
    items = db.execute(
        'select PID,PNAME,PRICE,PDATE from PRODUCT where PSID=' + user
    ).fetchall()
    db.close()
    return render_template('product.html',items=items)


@app.route('/')
def main_page():
    return render_template('start_page.html')

@app.route('/Product', methods = ['POST', 'GET'])
def login():
   if request.method == 'POST':
        user = request.form['myName']
        PW = request.form['myPassword']

        if (match_ID(user,PW) == 1):
            global ID 
            ID = str(user)
            return showlist(user)
        else:
            return fail()
   else:
      user = request.args.get('myName')
      return redirect(url_for('success', name = user))

@app.route('/product', methods = ['POST', 'GET'])
def add_in_db():
    if request.method == 'POST':
        PID = request.form['_PID']
        PNAME = request.form['_PNAME']
        PRICE = request.form['_PRICE']
        PDATE = request.form['_PDATE']

        conn = sqlite3.connect('list.db')
        cur = conn.cursor()
        cur.execute("INSERT INTO PRODUCT (PID,PSID,PNAME,PRICE,PDATE) VALUES (?,?,?,?,?)",(PID,ID,PNAME,PRICE,PDATE) )
        conn.commit()
        print ("Post database successfully")

        return showlist(ID)
    
    else:
      user = request.args.get('PID')
      return redirect(url_for('success', name = ID))

if __name__ == '__main__':
   app.run(debug = True)