# TRAFFIC SOURCE ANALYSIS

## Introduction

Traffic source analysis is about understanding where your customers are coming from and which channels are driving the highest quality traffic. 
Paid traffic is commonly tagged with tracking (UTM) parameters, which are appended to URLs and allow us to tie website activity to specific sources and campaigns.

In this repository, I attach several exercises with MySQL that have been done from a real business database with the aim of assessing bid optimization. In the context of online advertising, a bid refers to the amount of money an advertiser is willing to pay for a specific ad placement or keyword in a pay-per-click (PPC) advertising model. When an advertiser wants their ad to be displayed on a search engine or other digital platforms, they participate in an auction-based system where they compete with other advertisers who are interested in the same ad space.
Analyzing for bid optimization is about understanding the value of various segments of paid traffic, so that you can optimize your marketing budget. 
The bid amount is crucial because it determines the ad's eligibility to be displayed for a particular search query or on a specific webpage. Higher bids increase the chances of winning the auction and having the ad displayed prominently, while lower bids may lead to lower ad positions or limited visibility.

The common uses for bid optimization are:

- Figure out how much should you be spending per click to acquire customers.
- Understand how your website and products perform for various subsegments of traffic to optimize within channels.
- Analyze the impact that bid changes has on your ranking and the volume of customers driven to your site.

The exercises simulate a hypothetical case where a business asks us to get certain information and do certain analyses to optimize its benefits based on its database. 

## Exercises

### Exercise 1:
In the first exercises we are asked to get where the majority of the website sessions come from. We did a breakdown by UTM source, campaign and referring domain.
The result was that the utm_source "gsearch" and the utm_campaign "nonbrand" had the most number of sessions with a difference. 

![image](https://github.com/IhonaMaria/Traffic-source-analysis/assets/119692820/0b257b8b-ec10-4ba0-993c-bd7cd95f0f40)


### Exercise 2:
In exercise 2 we already knew that gsearch nonbrand was the major traffic source for the company, but we had to understand if those sessions were actually driving sales.
In other terms, we were asked to get what % of sessions the user makes to the website converts into a sale in the company. This was achieved by calculating the session-to-order conversion rate.
The company had a threshold session-to-order conversion rate of 4% and we obtained 2,97%. This indicates that the company is overspending and that they should take action. 

![image](https://github.com/IhonaMaria/Traffic-source-analysis/assets/119692820/cb09ffcb-2241-4c58-a94e-2bac198faa5d)


### Exercise 3:
After the previous exercise, the company decides to bid down gsearch nonbrand. Now, they are interested in pulling gsearch nonbrand trended session volume, by week, to see if the bid changes have caused the session volume to drop at all. 
After the analysis, we saw that after the bid change was done the sessions decrease, proving that gsearch nonbrand is highly sensitive to bid changes. 
Now, the company wants to increase the volume of sessions again but maintaining the level of efficiency and not losing money. How the campaign can be made more efficient?

![image](https://github.com/IhonaMaria/Traffic-source-analysis/assets/119692820/9099b7ca-64c2-4865-b536-9a89ece0a978)


### Exercise 4:
In this exercise, we had to pull conversion rates from session to order, by device type. The objective was to see if the desktop performance was better than on mobilephone, in order to bid up for desktop and get more volume of sessions.
After seeing the results we can ensure that desktop performs way better than mobile (since it has a higher session_to_order_conv_rate). Therefore, we shouldn't run the same bid, we should increase the bids on desktop because it will be more profitable. 

![image](https://github.com/IhonaMaria/Traffic-source-analysis/assets/119692820/f703e7eb-970e-4741-8b76-60e1f0e79ccd)


### Exercise 5:
The company bid the gsearch nonbrand desktop campaigns up. Now they want to pull weekly trends for both desktop and mobile to see the impact this had had on volume.
Observing the table we can see that there was a pop in the desktop session volume the week he increased the bid for desktop (reaching up to 661).

![image](https://github.com/IhonaMaria/Traffic-source-analysis/assets/119692820/b6d7976a-b533-4693-9f0c-893f63f4ae1f)


