-- EXERCISE 5

-- Statement: We bid our gsearch nonbrand desktop campaigns up on 2012-05-19. Could you pull weekly trends for both desktop and mobile so we can see the impact on volume?
-- You can use 2012-04-15 until the bid changes as a baseline. 

USE mavenfuzzyfactory;
SELECT 
	MIN(DATE(created_at)) AS week_started_date,
	COUNT(DISTINCT CASE WHEN device_type = 'desktop' THEN website_session_id ELSE NULL END) AS desktop_sessions,
    COUNT(DISTINCT CASE WHEN device_type = 'mobile' THEN website_session_id ELSE NULL END) AS mobile_sessions

FROM website_sessions

WHERE website_sessions.created_at <'2012-06-09'  -- We put the data when the message from the boss was sent to us
	AND website_sessions.created_at > '2012-04-15' 
	AND utm_source='gsearch'
    AND utm_campaign='nonbrand'
    
GROUP BY
	YEAR(created_at),
    WEEK(created_at)
    
    -- Observing the table we can see that there was a pop in the desktop session volume the week he increased the bid for desktop (reaching up to 661)
    

