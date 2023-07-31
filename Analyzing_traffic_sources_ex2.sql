-- EXERCISE 2

-- Statement: Sounds like gsearch nonbrand is our major traffic source, but we need to understand if those sessions are actually driving sales.
-- What % of sessions the user makes to ouur website convert into a sale in the company? You have to calculate the session to order conversion rate.


USE mavenfuzzyfactory;

-- First we have to select utm_source and utm_campaign from the correct table

SELECT
    COUNT(DISTINCT website_sessions.website_session_id) AS sessions,  -- The sessions that the users make in the business webpage
    COUNT(DISTINCT orders.order_id) AS orders,       -- The orders that that the customers really do
    COUNT(DISTINCT orders.order_id)/COUNT(DISTINCT website_sessions.website_session_id) AS session_to_order_conv_rate
FROM website_sessions
	LEFT JOIN orders  -- the website_sessions table doesn't have orders data in it so we have to include it
		ON orders.website_session_id=website_sessions.website_session_id
WHERE website_sessions.created_at <'2012-04-12'
	AND utm_source='gsearch'
    AND utm_campaign='nonbrand'
;

-- The company had a threshold of 4% and we obtained 2,97%. This indicates that the company is over-spending and they should take actions. 