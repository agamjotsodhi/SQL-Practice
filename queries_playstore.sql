-- Comments in SQL Start with dash-dash --
-- REQUESTS AND INSIGHTS 

-- RI0. Retrieve all data from the analytics table.
SELECT * FROM analytics;

-- RI1. Fetch the complete record for the app identified with the ID `1880`.
SELECT * FROM analytics 
  WHERE id = 1880;

-- RI2. Gather the ID and app name for apps last updated on August 01, 2018.
SELECT id, app_name FROM analytics
   WHERE last_updated = '2018-08-01';

-- RI3. Tally the number of apps within each category.
SELECT category, COUNT(*) FROM analytics 
  GROUP BY category;

-- RI4. Discover the top 5 apps with the most reviews and their respective review counts.
SELECT * FROM analytics 
  ORDER BY reviews DESC 
  LIMIT 5;

-- RI5. Retrieve the full record of the app with the highest reviews and a rating greater than or equal to 4.8.
SELECT * FROM analytics 
  WHERE rating >= 4.8 
  ORDER BY reviews DESC
  LIMIT 1;

-- RI6. Determine the average rating for each category, ranked from highest to lowest.
SELECT category, AVG(rating) FROM analytics 
  GROUP BY category 
  ORDER BY AVG(rating) DESC;

-- RI7. Identify the name, price, and rating of the most expensive app with a rating below 3.
SELECT app_name, price, rating FROM analytics 
  WHERE rating < 3 
  ORDER BY price DESC 
  LIMIT 1;

-- RI8. Retrieve all records with minimum installations not exceeding 50 and having a rating, sorted by highest rated first.
SELECT * FROM analytics 
  WHERE min_installs <= 50 
    AND rating IS NOT NULL 
  ORDER BY rating DESC;

-- RI9. List the names of apps rated below 3 with at least 10,000 reviews.
SELECT app_name FROM analytics
  WHERE rating < 3 AND reviews >= 10000;

-- RI10. Gather the top 10 most-reviewed apps priced between 10 cents and a dollar.
SELECT * FROM analytics
  WHERE price BETWEEN 0.1 and 1 
  ORDER BY reviews DESC 
  LIMIT 10;

-- RI11. Identify the most outdated app.
SELECT * FROM analytics 
  WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

-- RI12. Locate the most expensive app.
SELECT * FROM analytics 
  WHERE price = (SELECT MAX(price) FROM analytics);

-- RI13. Sum up all the reviews in the Google Play Store.
SELECT SUM(reviews) AS "All the Reviews" FROM analytics;

-- RI14. Find all categories with over 300 apps.
SELECT category FROM analytics 
  GROUP BY category 
  HAVING COUNT(*) > 300;

-- RI15. Discover the app with the highest proportion of reviews to minimum installs among apps with at least 100,000 installs. Display the app's name, reviews, installs, and proportion.
SELECT app_name, reviews, min_installs,  min_installs / reviews AS proportion
  FROM analytics
  WHERE min_installs >= 100000
  ORDER BY proportion DESC
  LIMIT 1;
