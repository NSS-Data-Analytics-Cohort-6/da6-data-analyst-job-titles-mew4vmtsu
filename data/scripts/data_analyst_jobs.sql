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

/* 4.How many postings in Tennessee have a star rating above 4? 3 */

Select Count (*)
From data_analyst_jobs
Where location = 'TN'
And star_rating > '4';

/* 5.How many postings in the dataset have a review count between 500 and 1000? 151 */

Select Count(*)
From data_analyst_jobs
Where review_count
Between 500 AND 1000;

/* 6.Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating? NE */

Select AVG(star_rating),round(avg(star_rating),2) AS avg_rating, location
From data_analyst_jobs
Group by location
Order By avg_rating DESC;

/* 7.Select unique job titles from the data_analyst_jobs table. How many are there? 881 */

Select Count (Distinct title)
From data_analyst_jobs;

/* 8. How many unique job titles are there for California companies? 230 */

Select Count (Distinct title)
From data_analyst_jobs
Where location ='CA';

/* 9. Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations? 40 */ 

Select AVG(star_rating) AS avg_rating, company
From data_analyst_jobs
Where review_count >= 5000
And company is not null
Group By company;

/* 10.	Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?*/

Select AVG(star_rating),round(avg(star_rating),2) AS avg_rating, company
From data_analyst_jobs
Where review_count >= 5000
and company is not null
Group By company
Order by avg_rating DESC;

/* 11. Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 774 */

Select Count (Distinct title)
From data_analyst_jobs
Where title ilike '%Analyst%';

/* 12. How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common? 26, should be 4 */

Select count(title)
From data_analyst_jobs
Where (title) not like'%Analyst%'
AND (title) not like'%Analytics%';

/*  **BONUS:**
You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks. 
 - Disregard any postings where the domain is NULL. 
 - Order your results so that the domain with the greatest number of `hard to fill` jobs is at the top. */
 
select count(domain), domain
From data_analyst_jobs
Where skill Like '%SQL%'
And days_since_posting > 21
And domain IS NOT NULL
Group by Domain
Order by Count DESC;






