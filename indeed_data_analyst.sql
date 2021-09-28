--Count total rows
--SELECT COUNT (*) AS total_rows
--FROM data_analyst_jobs;
--1793 rows

--First 10 rows. 10th row company?
--SELECT company
--FROM data_analyst_jobs
--LIMIT 10
--ExxonMobil

--Posting in TN, and TN/KY
--SELECT location AS companies_TN_KY, COUNT(*)
--FROM data_analyst_jobs
--WHERE location = 'TN' OR location = 'KY'
--GROUP BY location
--TN=21/TN,KY=27

--TN company > 4 star rating 
--SELECT location, star_rating
--FROM data_analyst_jobs
--WHERE location = 'TN' AND star_rating > 4
--3 postings

--Review count between 500 and 100
--SELECT company, review_count AS review_count_between_500_1000
--FROM data_analyst_jobs
--WHERE review_count BETWEEN 500 AND 1000
--review_count =151

--Average star rating per state
--SELECT location AS state, AVG(star_rating) AS avg_rating
--FROM data_analyst_jobs
--GROUP BY location 
--ORDER BY avg_rating DESC
--highest rating = NE

--Number of unique job titles
--SELECT DISTINCT(title) AS job_title
--FROM data_analyst_jobs
--#=881

--Unique job titles in CA
--SELECT DISTINCT(title) AS jobs_in_CA
--FROM data_analyst_jobs
--WHERE location = 'CA'
--#=230

--Companies with more than 5000 reviews
--SELECT company, AVG(star_rating) AS avg_rating
--FROM data_analyst_jobs
--WHERE review_count > 5000
--GROUP BY company
--#41 including 1 NULL company

--Highest star rating among companies with more than 5000 reviews
--SELECT company, AVG(star_rating) AS avg_rating
--FROM data_analyst_jobs
--WHERE review_count > 5000
--GROUP BY company
--ORDER BY avg_rating DESC
--General Motors

--Job titles conatining "Analyst"
--SELECT DISTINCT(title) AS analyst_job_title
--FROM data_analyst_jobs
--WHERE title ILIKE '%Analyst%'
--#774

--Job titles not containing "Analyst" or "Analytics"
--SELECT title
--FROM data_analyst_jobs
--WHERE title NOT ILIKE '%Analyst%'AND title NOT ILIKE '%Analytics%'
--All 4 require Tableau

--Industries that require SQL with postings longer than 3 weeks
--SELECT DISTINCT(domain) AS hard_to_fill, COUNT(*)
--FROM data_analyst_jobs
--WHERE skill ILIKE '%SQL%' 
--AND days_since_posting > 21 
--AND domain IS NOT NULL
--GROUP BY domain
--ORDER BY count DESC
--Internet and Software/ Banks and Financial Services/ Consulting and Business Services/ Health Care