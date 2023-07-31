-- EXERCISE 3

-- Statement: Based on previous analysis, the company bid down gsearch nonbrand on 2012-04-15.
-- Can you pull gsearch nonbrand trended session volumne, by week, to see if the bid changes have caused volume to drop at all?

USE mavenfuzzyfactory;
SELECT 
	MIN(DATE(created_at)) AS week_started_date,
	COUNT(DISTINCT website_session_id) AS sessions  -- The sessions that the users make in the business webpage
    
FROM website_sessions
WHERE website_sessions.created_at <'2012-05-12'
	AND utm_source='gsearch'
    AND utm_campaign='nonbrand'
GROUP BY
	YEAR(created_at),
    WEEK(created_at)
    
    -- The bid change was done on 2012-04-15. We can see that after that date the sessions decrease, proving that gsearch nonbrand is sensitive to bid changes. 
    -- We want to increase the volume of sessions again but maintaining the level of efficiency and not loosing money. How the campaign can be made more efficient?