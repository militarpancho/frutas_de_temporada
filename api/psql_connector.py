import psycopg2
import os



class fruits_database():
	def __init__(self):
		self.conn = psycopg2.connect("dbname=$DBNAME host=$HOST password=$PASSWORD")
		self.cur = self.conn.cursor()

	def fruits_of_the_month(self, month):
		self.cur.execute("""
			SELECT name
			 FROM seasonal_junction 
			 INNER JOIN fruits 
			 ON fruit_id=fruits.id 
			 WHERE month_id={month_id}
		""".format(month_id=month))
		results = {'fruits': []}
		for row in self.cur.fetchall():
			results['fruits'].append(row[0])
		return results

	def getMonths_of_fruit(self, fruit):
		self.cur.execute("""
			SELECT months.name, months.id
			FROM fruits 
			INNER JOIN seasonal_junction 
			ON id=seasonal_junction.fruit_id 
			INNER JOIN months 
			ON seasonal_junction.month_id=months.id 
			WHERE fruits.name='{fr}';
		""".format(fr=fruit))
		results = {'months': [], 'months_ids': []}
		for row in self.cur.fetchall():
			results['months'].append(row[0])
			results['months_ids'].append(row[1])
		return results
