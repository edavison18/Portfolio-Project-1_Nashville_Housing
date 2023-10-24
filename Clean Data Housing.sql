Select *
FROM [Practice_Data].[dbo].[NashvilleHousingData] 

-- Standardize Date Format
--done lost data but changed column 
---later drop Sale Date column


-- Populate Property Address data

Select *
From [Practice_Data].[dbo].[Nashville Housing Data] 
--Where PropertyAddress is null
order by ParcelID

Select a.ParcelID, a.PropertyAddress, b.ParcelID, b.ParcelID, ISNULL(a.PropertyAddress, b.PropertyAddress)
From dbo.[Nashville Housing Data] a
Join dbo.[Nashville Housing Data] b
	on a.ParcelID = b.ParcelID
	and a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null

Update a
Set PropertyAddress = ISNull (a.PropertyAddress, b.PropertyAddress)
From dbo.[Nashville Housing Data] a
Join dbo.[Nashville Housing Data] b
	on a.ParcelID = b.ParcelID
	and a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null


-- Breaking out Address into Individual Columns (Address, City, State)

Select 
Substring(PropertyAddress, 1, Charindex(',', PropertyAddress)-1) As Address,
SUBSTRING(PropertyAddress, Charindex(',', PropertyAddress)+1, len(PropertyAddress)) as Address

From [Practice_Data].[dbo].[NashvilleHousingData] 

Alter Table [Practice_Data].[dbo].[NashvilleHousingData] 
Add PropertySplitAddress Nvarchar(255);

Update [Practice_Data].[dbo].[NashvilleHousingData] 
Set PropertySplitAddress = Substring(PropertyAddress, 1, Charindex(',', PropertyAddress)-1)

Alter Table [Practice_Data].[dbo].[NashvilleHousingData] 
Add PropertySplitCity Nvarchar(255);

Update [Practice_Data].[dbo].[NashvilleHousingData] 
Set PropertySplitCity = SUBSTRING(PropertyAddress, Charindex(',', PropertyAddress)+1, len(PropertyAddress))


Select
PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)
From [Practice_Data].[dbo].[NashvilleHousingData]

Alter Table [Practice_Data].[dbo].[NashvilleHousingData]
Add OwnerSplitAddress Nvarchar(255),
OwnerSplitCity Nvarchar(255),
OwnerSplitState Nvarchar(255)

Update [Practice_Data].[dbo].[NashvilleHousingData]
Set OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)

Update [Practice_Data].[dbo].[NashvilleHousingData]
Set OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)

Update [Practice_Data].[dbo].[NashvilleHousingData]
Set OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)

Select *
From Practice_Data.dbo.NashvilleHousingData


-- Change Y and N to Yes and No in "Sold as Vacant" field

Select Distinct(SoldAsVacant), Count(SoldAsVacant)
From Practice_Data.dbo.NashvilleHousingData
Group By SoldAsVacant
Order by 2

Select SoldAsVacant,
Case when SoldAsVacant = 'Y' then 'Yes'
	when SoldAsVacant = 'N' then 'No'
	else SoldAsVacant
	End
From Practice_Data.dbo.NashvilleHousingData

Update Practice_Data.dbo.NashvilleHousingData
Set SoldAsVacant = Case when SoldAsVacant = 'Y' then 'Yes'
	when SoldAsVacant = 'N' then 'No'
	else SoldAsVacant
	End


-- Remove Duplicates

With RowNumCTE As (
Select *,
Row_number() Over(
Partition by ParcelID,
			 PropertyAddress,
			 SalePrice,
			 SaleDate,
			 LegalReference
			 Order by 
				UniqueID
			 ) row_num

From Practice_Data.dbo.NashvilleHousingData
)
--Order by ParcelID

Delete
From RowNumCTE
Where row_num > 1


--Order by PropertyAddress

Select *
From Practice_Data.dbo.NashvilleHousingData


ALTER TABLE Practice_Data.dbo.NashvilleHousingData
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress, SaleDate



-- Delete Unused Columns















