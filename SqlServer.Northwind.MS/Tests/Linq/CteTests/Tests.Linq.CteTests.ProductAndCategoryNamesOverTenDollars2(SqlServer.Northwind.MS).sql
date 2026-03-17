-- SqlServer.Northwind.MS SqlServer.2019

WITH [ProductAndCategoryNamesOverTenDollars] ([CategoryName], [UnitPrice], [ProductName])
AS
(
	SELECT
		[a_Category].[CategoryName],
		[p].[UnitPrice],
		[p].[ProductName]
	FROM
		[Products] [p]
			LEFT JOIN [Categories] [a_Category] ON [p].[CategoryID] = [a_Category].[CategoryID]
	WHERE
		[p].[UnitPrice] > 10
)
SELECT
	[p_1].[ProductName],
	[p_1].[CategoryName],
	[p_1].[UnitPrice]
FROM
	[ProductAndCategoryNamesOverTenDollars] [p_1]
ORDER BY
	[p_1].[CategoryName],
	[p_1].[UnitPrice],
	[p_1].[ProductName]

-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[p].[ProductName],
	[a_Category].[CategoryName],
	[p].[UnitPrice]
FROM
	[Products] [p]
		LEFT JOIN [Categories] [a_Category] ON [p].[CategoryID] = [a_Category].[CategoryID]
WHERE
	[p].[UnitPrice] > 10
ORDER BY
	[a_Category].[CategoryName],
	[p].[UnitPrice],
	[p].[ProductName]

