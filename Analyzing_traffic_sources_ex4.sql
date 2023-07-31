-- EXERCISE 4

-- Statement: Could you pull conversion rates from session to order, by device type?
-- (We want to see if desktop performance is better than on mobilephone to bid up for desktop and get more volume of sessions.

USE mavenfuzzyfactory;
SELECT
	website_sessions.device_type,
    COUNT(DISTINCT website_sessions.website_session_id) AS sessions,  -- The sessions that the users make in the business webpage
    COUNT(DISTINCT orders.order_id) AS orders,       -- The orders that that the customers really do
    COUNT(DISTINCT orders.order_id)/COUNT(DISTINCT website_sessions.website_session_id) AS session_to_order_conv_rate
FROM website_sessions
	LEFT JOIN orders  -- the website_sessions table doesn't have orders data in it so we have to include it
		ON orders.website_session_id=website_sessions.website_session_id
WHERE website_sessions.created_at <'2012-05-11'  -- We put the data when the message from the boss was sent to us
	AND utm_source='gsearch'
    AND utm_campaign='nonbrand'

GROUP BY 1

-- After seeing the results we can assure that desktop performs way better than mobile (therefore we shouldn't run the same bid, we should increase the bids on desktop). 