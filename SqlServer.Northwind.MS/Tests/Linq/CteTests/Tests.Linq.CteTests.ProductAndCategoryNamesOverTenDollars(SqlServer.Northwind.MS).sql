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
	[t1].[ProductName],
	[t1].[CategoryName],
	[t1].[UnitPrice]
FROM
	[ProductAndCategoryNamesOverTenDollars] [t1]
ORDER BY
	[t1].[CategoryName],
	[t1].[UnitPrice],
	[t1].[ProductName]

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

