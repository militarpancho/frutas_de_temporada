CREATE TABLE months (
	id INTEGER PRIMARY KEY,
	name VARCHAR(100)
);

CREATE TABLE fruits (
	id INTEGER PRIMARY KEY,
	name VARCHAR(100) UNIQUE
);

CREATE TABLE vegetables (
        id INTEGER PRIMARY KEY,
        name VARCHAR(100) UNIQUE
);
CREATE TABLE seasonal_junction (
	year INTEGER,
	month_id INTEGER REFERENCES months(id),
	fruit_id INTEGER REFERENCES fruits(id),
	CONSTRAINT id PRIMARY KEY (month_id, fruit_id)
);

