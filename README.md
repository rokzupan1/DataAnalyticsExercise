# FullDataAnalysisExercise
Following youtube video: https://www.youtube.com/watch?v=1pHYKdyRvrw&list=WL&index=6
I decided to create data analysis. The work will be done in SQL, Excel, Tableau.
The data was found in the description of the youtube video.

1. Understand the problem
2. Collect and gather the data
3. Clean the data
4. Gather and Analyze the data
5. Interpret the results

What does the management want?
They want to know the condition of the sales activities within the company.
They want to gain insights into various trends happening in the sales volume
over the 2016-2018 period. They probably also want to know the revenues per
region, per store, per product category. A list of the top 
customers and sales reps could also prove insightful. 

My first problems were that I couldn't connect to server in Microsoft SQL Server
Management Studio because I haven't install SQL Server Express instance. After that
I connected to the server and created objects and load data using dataset that I have
downloaded from youtube video. 

After following the video that created a 4722 long list of items sold with writing
SQL query with functions JOIN, GROUP BY, SELECT, FROM, AS, CONCAT. More items
could be sold in one order, we have connected Excel and our query from database
BikeStores from server localhost. This created a table exactly the same as the
result of the query in MSSMS was. I named this sheet Query1. I added two more sheets
Pivot Table and Dashboard.

While creating charts in Excel I had a problem because my version of Excel didn't
support map charts. I created a map chart in QlikSense. For other graphs there were
no problem and I completed them with Excel. 

Then I connected my table in Excel with Tableau Public and created interactive dashboard
with graphs and filters/slicers. I saved the file in cloud and it is accessible for
everyone. 
