![image](https://github.com/edavison18/Portfolio-Projects/assets/137111542/ed621528-66f6-469f-bd18-986046b91477)

# Portfolio-Projects: Nashville Housing Data Cleaning and Analysis

**Project Objective**
Clean the data with SQL to be in a more usuable format for analysis. Then explore the data from a realator business perspective to answer the following questions:
  1. What are the top property types for sale?
  2. What are most popular cities for residential homes sold?
  3. What is the average Sale Price by City and disaggregate by landuse?
  4. Sale price by date and city: Patterns in pricing across dates according to different cities ex. Time of year when sale prices increase or decrease.
  5. Difference in Sale Price vs Value for residental homes - Identify patterns where homes sold for a larger difference in sale price to total property value vs where homes sold for less than the property was valued.

# Cleaning Data
Steps to cleaning data:
1. Standardized the data format
2. Populate missing property address data from duplicate columns
3. Breaking out Property and Owner Address into Individual Columns (Address, City, State)
4. Change Y and N to Yes and No in "Sold as Vacant" field
5. Remove duplicate rows where Parcel ID and Legal Reference ID was the same


# Analyzing the Data

Code at Nashville Housing Analysis Query.sql

**1.** First, I found a spelling error in my Sale Date column so edited column to read correctly to Sale Date. 

**2.** Then started by exploring what property types of data were sold in the Nashville area. The top property types were:
   Single Family Homes
   Residential Condos
   Vacant Residential Land
   Vacant Res Land
   Duplex
   Zero Lot line
   Condo

![Property Type Overview](https://github.com/edavison18/Portfolio-Projects/assets/137111542/d022ccea-9884-47d9-a7f3-8ddd76bb8c4e)


I'm assuming that Vacant Res Land is the same as Vacant Residential Land and Condo would be the same as Residential Condos. However, I plan to focus on Single Family Homes for most of the analysis as those are significantly most of the homes sold.

By filtering Single Family Homes, Residential Condos and Condos, I identified residential properties sold by city. Nashville was the city with the most residential homes sold than the surrounding cities: 
    Single Family 23,317
    Residential Condo 11,601
    Condo 231

This indicates that compared to surrounding areas if you are looking at buying a home there will be more homes available in Nashville and if you are selling there will be more competition because there are more homes for sale. 

**3.** To answer what is the average sale price of a single family home by year (2013-2016) for each city. For the dashboard, I focused on Nashville.

![Average Price per City copy](https://github.com/edavison18/Portfolio-Projects/assets/137111542/bd8c9d1b-ed86-4825-9cd0-40820b815d3f)

There was an increase in the average price from 2013-15 but a decrease in the average home price in 2016. So there would need to be a deeper dive for homes sold in 2016 to see if there were factors that caused a decrease in the average price. It maybe that there were less homes sold in 2016 vs prior years or there were outlyers that screwed the average price for previous years. When doing a quick search, there did not seem to be any housing event in Nashville that would have caused a reduction in the average home price in 2016. So I did a quick drill down for number of single family homes sold each year, and then in 2016 what was the last Sale Date recorded. The number of homes sold increased each year and in 2015 11, 749 homes were sold. However, in 2016 only 9,782 homes were sold. The last Sale Date in 2016 was October 31st, while in 2015 sales were recorded through December. Thus, the drop in average sale price is probably due to only having recorded sales through October. 

**4.** To identify the best time of year to sell or buy, I looked at the average sale price by month. 

![Sale Price by Sold Month](https://github.com/edavison18/Portfolio-Projects/assets/137111542/64e111c9-afb6-4b3f-9d40-87c0d2bed936)

Across 2013-2016, June and August look to be best months to sell to have a higher sale price, while the best time to buy seems to be winter months.

**5.** Finally, I wanted to explore the data on the value difference between the recorded value of the home vs the sale price. The value was found in the data column Total Value which was the addition of the building value and land value. I only looked at Single Family Homes.




 
 
