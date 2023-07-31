-- EXERCISE 1

-- Statement: Can you help me understand where the bulk of our website sessions are coming from? I'd like to see a breakdown UTM source, campaign and referring domain. 
-- You can only take information up to 12-04-2012

USE mavenfuzzyfactory;

SELECT
	utm_source,
    utm_campaign,
    http_referer,
    COUNT(DISTINCT website_session_id) AS number_of_sessions
    
FROM website_sessions
WHERE created_at <'2012-04-12'
GROUP BY
	utm_source,
    utm_campaign,
    http_referer
ORDER BY number_of_sessions DESC
