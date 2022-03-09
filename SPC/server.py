# server.py
from flask import Flask, request, jsonify
import sqlite3


db_filename = "./inventory.db"

conn = sqlite3.connect(db_filename)
c = conn.cursor()

app = Flask(__name__)

@app.route("/item", methods=["GET"])
def get_item():
    """
    Get item number from get request and return item info
    """
    id = request.args['skew']  #example: http://127.0.0.1:5000/item?skew=1 (not working right now)
    c.execute(f"SELECT * FROM Inventory WHERE Skew = {id}")#using item id from the get request
    result = c.fetchall()
    #might need to do something to image
    return jsonify(result)


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