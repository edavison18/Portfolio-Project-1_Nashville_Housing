Select *
From Practice_Data.dbo.NashvilleHousingData

--Count LandUse types - Which property types are the most sold

Select LandUse, count(LandUse) As Total
From Practice_Data.dbo.NashvilleHousingData
Group by LandUse
Order by 2 Desc


--Count Single Family Homes Sold by City - Popular cities to live
Select PropertySplitCity, LandUse, Count(LandUse) As Total
From Practice_Data.dbo.NashvilleHousingData
Where  LandUse = 'Single Family'
Group by PropertySplitCity, LandUse
Order by 3 Desc


--Average Sale Price by City, and then LandUse
---Identify city that has the highest sale price popular to live and sellers, and the lowest price might be for interested buyers and investors 

Select PropertySplitCity, AVG(SalePrice) as AverageSalePrice
From Practice_Data.dbo.NashvilleHousingData
Group by PropertySplitCity
Order by 2 Desc

Select PropertySplitCity, LandUse, AVG(SalePrice) as AverageSalePrice
From Practice_Data.dbo.NashvilleHousingData
Group by PropertySplitCity, LandUse
Order by 1, 2 Desc

--Sale price by date and city **Edit date colunm name
--Patterns in pricing across dates according to different cities ex. Time of year when sale prices increase or decrease
Select SalesDataConverted, PropertySplitCity, SalePrice
From Practice_Data.dbo.NashvilleHousingData 
Order by 1, 2 


--Sale price by date single family group by city
Select SalesDataConverted, PropertySplitCity, SalePrice, LandUse
From Practice_Data.dbo.NashvilleHousingData 
Where LandUse = 'Single Family'
Order by 1, 2 

---Average Sale Price by Year built 

Select YearBuilt, Avg(SalePrice) as AverageSalePrice
From Practice_Data.dbo.NashvilleHousingData 
Where YearBuilt is not null
Group by YearBuilt
Order by 1 Desc



----LandValue +Building Value (Total Value) vs Price difference to identify where properties sold for less than value or had a good return
Select UniqueID, LandUse, SalePrice, TotalValue, (SalePrice - TotalValue) as PriceValueDifference
From Practice_Data.dbo.NashvilleHousingData
Order by 2, 5 Desc


---Average PriceValueDifference by Property Type (Temp Table?)

---Sold as Vacant vs Not
Select LandUse, SoldAsVacant, Count(SoldAsVacant)As Total
From Practice_Data.dbo.NashvilleHousingData
Group by LandUse, SoldAsVacant
Order by 1, 2