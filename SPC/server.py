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
    id = request.args['skew']  #example: http://127.0.0.1:5000/item?skew=1
    result = c.execute(f"SELECT * FROM Inventory WHERE Skew = {id}").fetchall() #using item id from the get request
    #might need to do something to image
    return jsonify(result)

@app.route("/item", methods=["POST"])
def add_item():
    if request.is_json:
        item = request.get_json()
        last_item = c.execute(f"SELECT Skew FROM Inventory ORDER BY Skew DESC").fetchall()[0]
        c.execute(f"INSERT INTO Inventory VALUES({last_item+1}, {item.name}, {item.quantity}, {item.image}, {item.threshold});")
        c.commit()
        return jsonify(c.execute(f"SELECT * FROM Inventory WHERE Skew = {last_item+1}").fetchall()), 201
    return {"error": "Request must be JSON"}, 415

# countries = [
#     {"id": 1, "name": "Thailand", "capital": "Bangkok", "area": 513120},
#     {"id": 2, "name": "Australia", "capital": "Canberra", "area": 7617930},
#     {"id": 3, "name": "Egypt", "capital": "Cairo", "area": 1010408},
# ]

# def _find_next_id():
#     return max(country["id"] for country in countries) + 1

# @app.route("/countries", methods=["GET"])
# def get_countries():
#     return jsonify(countries)

# @app.route("/countries", methods=["POST"])
# def add_country():
#     if request.is_json:
#         country = request.get_json()
#         country["id"] = _find_next_id()
#         countries.append(country)
#         return country, 201
#     return {"error": "Request must be JSON"}, 415
# print("Hello World")