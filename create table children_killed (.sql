create table children_killed (
INT PRIMARY KEY,
incident_date TEXT,
state TEXT,
city_or_county TEXT,
address TEXT,
number_killed INT,
number_injured INT
);


create table people_killed (
INT PRIMARY KEY,
incident_date TEXT,
state TEXT,
number_killed INT,
number_injured INT
);


#Jupyter notebook 

rds_connections_string = "<INSERT USERNAME>:<INSERT PASSWORD>@localhost:5432/mass_shootings_db2"
engine = create_engine(f'postgresql://{rds_connection_string}')

engine.table_names()

children_df.to_sql(name='children_killed', con=engine, if_exists='append', index=False)

pd.read_sql_query('select * from children_killed', con=engine).head()



SELECT children_killed.id, 
children_killed.incident_date,
children_killed.state,
children_killed.number_killed,
children_killed.number_injured
FROM children_killed
JOIN people_killed
ON children_killed.id = people_killed.id;

