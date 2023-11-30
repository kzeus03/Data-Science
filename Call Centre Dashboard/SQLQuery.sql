create database call_center_project
use call_center_project
select * from Call_Center_Data
select COUNT(id) as total_no_of_calls from Call_Center_Data 
select SUM(Call_Duration_In_Minutes) from Call_Center_Data
select SUM(Call_Duration_In_Minutes)/60 from Call_Center_Data
select CAST(AVG(Call_Duration_In_Minutes) as decimal(10,2)) as Average_Call_Duration from Call_Center_Data
select DATENAME(DW,Call_Timestamp) as Call_Date, COUNT(DISTINCT id) as Total_Calls from Call_Center_Data group by DATENAME(DW,Call_Timestamp)
select distinct(State), count(distinct id) as Total_Calls from Call_Center_Data group by State order by Total_Calls DESC
select distinct(Reason), count(distinct id) as Total_Calls from Call_Center_Data group by Reason
select distinct(Channel) as Total_Calls, count(distinct id) from Call_Center_Data group by Channel
select distinct(Sentiment) , count(distinct id) as Total_Calls from Call_Center_Data group by Sentiment
select distinct(Call_Centres_City) , count(distinct id) as Total_Calls from Call_Center_Data group by Call_Centres_City
