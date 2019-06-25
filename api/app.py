from flask import Flask, jsonify
import psql_connector
import datetime
import sys
import os
PORT = os.environ.get("PORT", 5000)
app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False
fruits_DB = psql_connector.fruits_database()
@app.route('/now/')
def get_month_fruits():
    current_month=str(datetime.datetime.now()).split('-')[1]
    fruits = fruits_DB.fruits_of_the_month(current_month)
    return jsonify(fruits)

@app.route('/getMonths/<fruit>')
def getMonths(fruit=None):
    return jsonify(fruits_DB.getMonths_of_fruit(fruit))

@app.route('/getTeas/<tea>')
def getTea(tea=None):
    with open('teas.csv', newline='') as csvfile:
        spamreader = csv.reader(csvfile, delimiter=',')
        i = next(spamreader)
        response = dict((ik,0) for ik in i)
        for row in spamreader:
            if row[0] == tea:
                for index, ik in enumerate(i):
                    response[ik] = row[index]
            else:
                continue
    return jsonify(response)  
if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=int(PORT))
