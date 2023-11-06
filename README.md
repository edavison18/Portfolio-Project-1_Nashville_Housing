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

First, I found a spelling error in my Sale Date column so edited column to read correctly to Sale Date. 

Then started by exploring what property types of data were sold in the Nashville area. The top property types were:
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





 
 
