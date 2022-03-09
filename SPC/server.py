# server.py
from flask import Flask, request, jsonify
import sqlite3


db_filename = "./inventory.db"

conn = sqlite3.connect(db_filename, check_same_thread=False)
c = conn.cursor()

app = Flask(__name__)

@app.route("/item", methods=["GET"])
def get_item():
    """
    Get item number from get request and return item info
    """
    id = request.args['sku']  #example: http://127.0.0.1:5000/item?sku=1
    result = c.execute(f"SELECT * FROM Inventory WHERE SKU = {id}").fetchall() #using item id from the get request
    #might need to do something to image
    return jsonify(result)

@app.route("/item", methods=["POST"])
def add_item():
    if request.is_json:
        item = request.get_json()
        last_item = c.execute(f"SELECT SKU FROM Inventory ORDER BY Skew DESC").fetchall()[0]
        # values(sku, name, qty, imagepath, lst)
        c.execute(f"INSERT INTO Inventory VALUES({last_item+1}, {item.name}, {item.qty}, {item.image}, {item.lst});")
        c.commit()
        return jsonify(c.execute(f"SELECT * FROM Inventory WHERE SKU = {last_item+1}").fetchall()), 201
    return {"error": "Request must be JSON"}, 415