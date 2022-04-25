---
title: "Cyclist Bike share analysis report"
author: "Agang Lethabo Nkwana"
date: '2022-04-20'
output: html_document
---
# Cyclistic bike-share analysis for the year starting April 2020 to April 2021

## About the company

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.
Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

### Scenario

You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.
Moreno has assigned you the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

### Business task

*Analyze how annual and casual riders use Cyclistic bikes differently
*Look for reasons why casual members would opt for annaul membership
*Use digital media to find a way to entice casual members to opt for annual membership

#### Tools
R programming for data cleaning and Tableau for data Visualization

I used R to combine the 12 month data and to clean it.Then exported it to a CSV file

#### *Data cleaning report [link](Cyclistic bike share data cleaning report code.nb.html) :

#### What I found from the data
* Docked bikes are exponentially the most used bik_ type in the business.
* Casual riders have the longest ride lengths.
* Weekends starting from Friday have the longest ride lengths for all bike_type's and Ride_type.

### From the Usertype vs WeekDays chart which is interactive and can be filtered by weekdays below or Follow [link](https://public.tableau.com/shared/GJ54XMKCH?:display_count=n&:origin=viz_share_link)
![Usertype vs WeekDays.](Usertype ,weekdays vs ride length TripdataViz.png)

### Note:
*The most popular days to use bikes are weekends starting from Fridays where casual members have the longest ride lengths.

### From the sertype vs Ride type chart

![Usertype vs Ride type.](Usertype, Ride Length vs Ride Type.png)

*Docked bikes are the most popular among both Casual and Members.

### From the Usertype, Member types vs Months chart

![Usertype, Member types vs Months.](Usertype, Ride Type vs MONTHS.png)

*There is peak Usage especially for Docked bikes by both casuals and members in the month of April. Which is the month I recommend that advertisers garner their focus on.

## Summary :

##### Based on the data it is extremely wise to try to convert casuals into memebers because there is high activity of them and theres a huge chance of profitability.
##### Docked bikes are very popular which means theres extreme demand for them, whether supply meets demand should be looked into.

### Recommendation :

#### Looking at the the  line graph of peak station locations for casual riders [link](https://public.tableau.com/shared/2JFG27FFT?:display_count=n&:origin=viz_share_link) 

I have made an annotation on the peak start station which is *Millennium park* and or *Streeter Dr and Grand avenue* where I recommend a where a live billboard could be placed to advertise membership specials to entice casual riders to sign up for membership

And also considering the end station locations graph for casual riders [link](https://public.tableau.com/shared/7W3MX7P42?:display_count=n&:origin=viz_share_link) a digital scan link on *HUBBARD ST BIKE CHECKING* can be placed if the advertising budget allows
