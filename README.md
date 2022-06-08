# Mass-Shootings

With the ever increasing rate in which mass shootings are occurring in the US, we wanted to see how many of them had targeted/affected children. We started out by doing a kaggle search, which lead us to https://www.kaggle.com/datasets/hemil26/mass-shootings-in-united-states-20182022?select=shootings_2022.csv, but in the end, we chose to limit our focus to 2022, since it feels like this current year has been such an active one. Using this dataset as a starting point, we eventually chose to use the following resources: 

- A CSV of children killed downloaded on 06/06/2022 (the day this topic was chosen) from: [gunviolencearchive.org](https://www.gunviolencearchive.org/)
  ('Gun Violence Archive (GVA) is a not for profit corporation formed in 2013 to provide free online public access to accurate information about gun-related violence in the United States.' -GVA)
  
- The pandas .read_html() function on: https://en.wikipedia.org/wiki/List_of_mass_shootings_in_the_United_States_in_2022
  (This was the source that the kaggle dataset was based off of)
  
In order to EXTRACT this information, we created a Jupyter Notebook and used the Pandas library .read_csv() and .read_html() functions to turn our two datasets into dataframes. From there, we TRANSFORMED our data by cleaning up the dataframes by dropping any columns with only null values, eliminating any shooting incident that occured in the previous years (from 2013-2021) from the CSV obtained from the GVA website, and formatting the dates so that they are the same in both DateFrames. This required us to swap out the month names for the numbers, and adding the year to the end of mm/dd format in the Mass_Shootings DataFrame. We then --------- (maybe joined them on something? If we join, the database will only have 1 table, if not, we'll have to create 2.)

Finally, we LOADed all of our information into a database.

Included is/are the table schema/-s and exported CSVs of our cleaned-up dataset for easy input into the database. 
