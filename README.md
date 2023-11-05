# Portfolio-Projects
Nashville Housing Data Cleaning and Analysis

**Project Objective**
Clean the data with SQL to be in a more usuable format for analysis. Then explore the data to answer the following questions:
  1. What are the top property types for sale?
  2. What are most popular cities for residential homes sold?
  3. What is the average Sale Price by City and disaggregate by landuse?
  4. Sale price by date and city: Patterns in pricing across dates according to different cities ex. Time of year when sale prices increase or decrease.
  5. Difference in Sale Price vs Value for residental homes - Identify patterns where homes sold for a larger difference in sale price to total property value vs where homes sold for less than the property was valued.

# Cleaning Data
Steps to cleaning data:
1. Standardized data format
2. Populate missing property address data
3. Breaking out Property and Owner Address into Individual Columns (Address, City, State)
4. Change Y and N to Yes and No in "Sold as Vacant" field
5. Remove duplicate rows where Parcel ID and Legal Reference ID was the same


# Analyzing the Data

First, I found a spelling error in my Sale Date column so edited column to read Sale Date. 
Then started by exploring what property types of data were sold in the Nashville area. The top property types were:
