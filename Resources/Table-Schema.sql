-- Create Tables

create table children_killed (
id SERIAL PRIMARY KEY,
Incident_ID INT,
Incident_Date VARCHAR,
State VARCHAR,
City_or_County VARCHAR,
Address VARCHAR,
Number_Killed INT,
Number_Injured INT,
Year INT
);


create table people_killed (
id SERIAL PRIMARY KEY,
Incident_Date TEXT,
City VARCHAR,
State TEXT,
Dead VARCHAR,
Injured VARCHAR,
Total INT,
Description VARCHAR
);

-- See Where Tables Overlap and Where Children Are Affected By Mass Shootings

SELECT *
FROM children_killed
INNER JOIN people_killed 
	ON children_killed.city_or_county = people_killed.city
		AND children_killed.state = people_killed.state