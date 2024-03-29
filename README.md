# Mass Shootings: Who Will Think of the Children???

With the ever increasing rate in which mass shootings are occurring in the US, we wanted to see how many of them had targeted/affected children. We started out by doing a kaggle search, which lead us to <a href="https://www.kaggle.com/datasets/hemil26/mass-shootings-in-united-states-20182022?select=shootings_2022.csv">Mass Shootings in United States (2018-2022)</a>, but in the end, we chose to limit our focus to 2022, since it feels like this current year has been such an active one. Using this dataset as a starting point, we eventually chose to use the following resources: 

<p>- A CSV of children killed downloaded on 06/06/2022 (the day this topic was chosen) from: <a href="https://www.gunviolencearchive.org/">Gun Violence Archive (G.V.A.)</a>.</p> 
<p>&emsp;<i>G.V.A. is a 'not for profit corporation formed in 2013 to provide free online public access to accurate information about gun-related violence in the United States.'</i> -G.V.A.</p>

<p>- The pandas .read_html() function on Wikipedia's page: <a href="https://en.wikipedia.org/wiki/List_of_mass_shootings_in_the_United_States_in_2022">List of Mass Shootings in the United States 2022</a>.</p>
<p>&emsp;<i>This was the source that the kaggle dataset was based off of.</i></p>
  
 <p>- The datetime library to sync up the date formats on both the CSV and the table.</p>
  
In order to <b>EXTRACT</b> this information, we created a Jupyter Notebook and used the Pandas library .read_csv() and .read_html() functions to turn our two datasets into dataframes. From there, we <b>TRANSFORMED</b> our data by cleaning up the dataframes by dropping any columns with only null values, eliminating any shooting incident that occured in the previous years (from 2013-2021) from the CSV obtained from the GVA website, and formatting the dates so that they are the same in both DateFrames. This required us to swap out the month names for the numbers, and adding the year to the end of mm/dd format in the Mass_Shootings DataFrame.

We then <b>LOAD</b>ed all of our information into a SQL database using SQL-Alchemy. 

In the Schema file, you can find the code used to create the tables needed to load the data. Once the data is loaded, we created an INNER JOIN to see how many children have truly been affected by mass shootings in 2022. 

<b>Included:</b>
- The table schemas and SQL code used to join and compare the two tables.
- The exported CSVs of our cleaned-up dataset for easy input into the database. 

<b>Things You Will Need:</b>
- Your Postgres Password (you will need to insert it into the code when attempting to make the connection between your Jupyter Notebook and the database)

<hr>

<b>Discussion:</b>

Our findings revealed to us that children are usually not the target in the recent mass shootings. When we did the join on the incident city AND state, only 27 results (out of a possible 129), populated. This means that children are targeted at a 21% rate (or 20.93% to be exact). This is much lower than what we were expecting. Obviously, we would like for that number to be 0%, but it is impossible to reach without some kind of legal reform.

In the future, maybe we can compare the number of children affected to the rest of the world, and using those results, we can try to make a real change.
<br>
<hr>
<b>UPDATE:</b>

This program can now search for and download the most current CSV of children injured or killed in 2022 from the GVA.org website. This allows for the uploaded CSV to match the current dates to the mass shooting in the US reports from the Wikipedia page. With that, came a few formatting issues. I saw the format of the Incident Date column change from the first time we downloaded the CSV (6/6/2022), and hopefully I was able to provide an adequate formatting substitute, just in case it happens again. Also, the first CSV had instances dating all the way back to the group's founding (2013). The last time I checked on and updated this code, they had changed the page to only show the gun violence incidents in 2022, thus automatically eliminating any dates prior. I left in some of the code that limited the dataframe year to 2022, just in case they decided to make changes to the page again.

![gun](https://user-images.githubusercontent.com/100710958/190201302-5d12707c-1cd0-4c7e-933f-69176b49775e.png)

<b>The Extra Things You Will Need:</b>
- The current filepath to your Downloads folder.
- The <i>NEW</i> filepath to wherever you have the Resources folder to this project is located.
*Make sure you keep the same name as the previous CSV file (so your new filepath will end with "Resources\\Children_Killed.csv"), since this is what you are updating and replacing with the newly downloaded one. This is also how we are going to reference the CSV in the following code.

So, To Recap:
- Updating Children_Killed.csv to include the most current dates is possible
- Maintain the same CSV name and the program will replace the old version with the new version 
- Changes to the date format is possible, so be on the lookout for that when you upload the new CSV

<p>Thank You,</p>
<p>-Diandra</p>

<br>
<hr>
<b>Creators:</b>
<p><b>Diandra McNeill</b></p>
  <p>LinkedIn: https://www.linkedin.com/in/diandra-mcneill-765410233/</p>
  <p>GitHub: https://github.com/dmcneill0711/</p>
<p><b>Herman Tucker</b></p>
  <p>LinkedIn: http://linkedin.com/in/herman-tucker-2273441b2</p>
  <p>GitHub: https://github.com/hermantucker12</p>
