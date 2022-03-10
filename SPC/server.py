# server.py
from flask import Flask, request, send_file, render_template, jsonify, Response
import sqlite3
import json
import urllib 


db_filename = "./store.db"

conn = sqlite3.connect(db_filename, check_same_thread=False)
c = conn.cursor()

app = Flask(__name__, template_folder='.')

@app.route("/home")
def home():
    result = c.execute(f"SELECT SKU, Name, Quantity, ImagePath, Threshold FROM Inventory").fetchall()
    return render_template("UI/index.html", items=result)

@app.route("/item", methods=["GET"])
def get_item():
    """
    Get item number from get request and return item info
    """
    id = request.args['sku']  #example: http://127.0.0.1:5000/item?sku=1
    result = c.execute(f"SELECT * FROM Inventory WHERE SKU = {id}").fetchall()[0] #using item id from the get request
    #might need to do something to image
    return jsonify({
        "SKU" : result[0],
        "Name": result[1],
        "QTY" : result[2],
        "Image": result[3],
        "Threshold": result[4],
        "Available": result[5]
    })

@app.route("/", methods=["GET"])
def get_all():
    """
    Get item number from get request and return item info
    """
    #example: http://127.0.0.1:5000/
    result = c.execute("SELECT * FROM Inventory").fetchall() #using item id from the get request
    results = list(map(lambda x: {
        "SKU" : x[0],
        "Name": x[1],
        "QTY" : x[2],
        "Image": x[3],
        "Threshold": x[4],
        "Available": x[5]
    }, result))
    return Response(json.dumps(results),  mimetype='application/json')

@app.route("/item", methods=["POST"])
def add_item():
    """
    Add item to DB
    """
    if request.is_json:
        item = request.get_json()
        last_item = c.execute("SELECT SKU FROM Inventory ORDER BY Skew DESC").fetchall()[0][0]
        # values(sku, name, qty, imagepath, lst)
        c.execute(f"INSERT INTO Inventory VALUES({last_item+1}, {item['name']}, {item['qty']}, {item['image']}, 5, True);")
        result = c.execute(f"SELECT * FROM Inventory WHERE SKU = {last_item+1}").fetchall()[0]
        return jsonify(json.dumps({
            "SKU" : result[0],
            "Name": result[1],
            "QTY" : result[2],
            "Image": result[3],
            "Threshold": result[4],
            "Available": result[5]
            })), 201
    return {"error": "Request must be JSON"}, 415

@app.route("/item", methods=["PUT"])
def update_item():
    """
    Given an SKU, update the item's qty
    """
    if request.is_json:
        item = request.get_json()
        # values(sku, name, qty, imagepath, lst)
        c.execute(f"UPDATE Inventory SET Quantity = {item['qty']}, Available = {0 if item['qty'] <= 0 else 1} WHERE SKU = {item['sku']};")
        result = c.execute(f"SELECT * FROM Inventory WHERE SKU = {item['sku']}").fetchall()[0]
        return jsonify(json.dumps({
            "SKU" : result[0],
            "Name": result[1],
            "QTY" : result[2],
            "Image": result[3],
            "Threshold": result[4],
            "Available": result[5]
            })), 201
    return {"error": "Request must be JSON"}, 415

@app.route("/image")
def get_image():
    """
    Return a picture for the requested path
    """
    name = request.query_string.decode('ascii') # example: http://127.0.0.1:5000/image?path=Hot Breakfast/Breakfast Sandwiches & Wraps/Bacon, Gouda & Egg Sandwich.png
    name = name.replace("path=", '')
    path = urllib.parse.unquote(name)
    filename = '../Image/'+path
    return send_file(filename, mimetype='image/gif')

# @app.route("/transactions", methods=["POST"])
# def remove_item():
#     """
#     Add item to transaction and lower qty from inventory
#     """
#     if request.is_json:
#         item = request.get_json()
#         # [UserID] [SKU] [Quantity] [Order_type] [Date]
#         c.execute(f"INSERT INTO Transactions VALUES({item['userID']}, {item['sku']}, {item['qty']}, {item['order']}, {item['date']});")
#         count = c.execute(f"SELECT qty FROM Inventory WHERE SKU = {item['sku']}").fetchall()[0]
#         c.execute(f"UPDATE Inventory SET Quantity = {count - item['qty']} WHERE SKU = {item['sku']};")
#         return "Your transaction is complete", 201
#     return {"error": "Request must be JSON"}, 415
