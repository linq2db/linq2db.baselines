-- Northwind.SQLite.MS SQLite.MS SQLite

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
	[t2].[ProductName],
	[t2].[CategoryName],
	[t2].[UnitPrice]
FROM
	(
		SELECT
			[t1].[CategoryName],
			[t1].[UnitPrice],
			[t1].[ProductName]
		FROM
			[ProductAndCategoryNamesOverTenDollars] [t1]
	) [t2]
ORDER BY
	[t2].[CategoryName],
	[t2].[UnitPrice],
	[t2].[ProductName]

-- Northwind.SQLite.MS SQLite.MS SQLite

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

