from flask import Flask, redirect, url_for, request, render_template
import sqlite3

app = Flask(__name__)

conn = sqlite3.connect('list.db')
print ("Opened database successfully")
conn.close()

#연습 - 장보기 목록 만들기
@app.route('/shopping')
def shopping():
    #데이터베이스에서 데이터를 가져 온다. 
    con = sqlite3.connect("list.db")
    con.row_factory = sqlite3.Row
    cur = con.cursor()
    cur.execute("select * from shopping")
    rows = cur.fetchall()
    print("DB:")
    print(rows)
    return render_template('shoppinglist.html', rows = rows)

@app.route('/success/<name>')
def success(name):
   return 'welcome %s' % name
   
@app.route('/fail/<name>')
def fail():
    return render_template('fail_page.html')

def showlist(user):
    db = sqlite3.connect('list.db')
    db.row_factory = sqlite3.Row
    items = db.execute(
        'select PSID,PNAME,PRICE,PDATE from PRODUCT where PSID=' + user
    ).fetchall()
    return render_template('product.html',items=items)

@app.route('/start_page', methods = ['POST', 'GET'])
def login():
   if request.method == 'POST':
        user = request.form['myName']
        PW = request.form['myPassword']

        #이름과 패스워드를 일치하는지 데이터 베이스에서 확인 해야함
        con = sqlite3.connect("list.db")
        con.row_factory = sqlite3.Row
        cur = con.cursor()
        cur.execute("select SID from SUPPLIER where SID=" + user +" AND SPW="+PW)
        rows = cur.fetchall()
        print("DB:")
        print(rows)

        if (user == "11") and (PW == "1"):
            return showlist(user)
        else:
            return fail()
   else:
      user = request.args.get('myName')
      return redirect(url_for('success', name = user))

if __name__ == '__main__':
   app.run(debug = True)