/* 1.How many rows are in the data_analyst_jobs table? 1793 */

Select count (*)
From data_analyst_jobs;

/* 2.Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?  ExxonMobil */

Select *
From data_analyst_jobs
Limit 10;

/* 3.How many postings are in Tennessee? How many are there in either Tennessee or Kentucky? 27 */

Select Count (*)
From data_analyst_jobs
Where location ='TN' 
Or location = 'KY';

/* 4.How many postings in Tennessee have a star rating above 4? 4 */

Select Count (*)
From data_analyst_jobs
Where location = 'TN'
And star_rating >= '4';

/* 5.How many postings in the dataset have a review count between 500 and 1000? 151 */

Select Count(*)
From data_analyst_jobs
Where review_count
Between 500 AND 1000;

/* 6.Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?*/

Select *
From data_analyst_jobs
Where;

/* 7.Select unique job titles from the data_analyst_jobs table. How many are there? */






