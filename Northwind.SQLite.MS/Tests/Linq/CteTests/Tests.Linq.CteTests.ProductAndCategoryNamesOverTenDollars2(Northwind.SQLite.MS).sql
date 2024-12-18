BeforeExecute
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
			LEFT JOIN [Categories] [a_Category] ON [p].[CategoryID] = [a_Category].[CategoryID] AND [p].[CategoryID] IS NOT NULL
	WHERE
		[p].[UnitPrice] > 10 AND [p].[UnitPrice] IS NOT NULL
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

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[p].[ProductName],
	[a_Category].[CategoryName],
	[p].[UnitPrice]
FROM
	[Products] [p]
		LEFT JOIN [Categories] [a_Category] ON [p].[CategoryID] = [a_Category].[CategoryID] AND [p].[CategoryID] IS NOT NULL
WHERE
	[p].[UnitPrice] > 10 AND [p].[UnitPrice] IS NOT NULL
ORDER BY
	[a_Category].[CategoryName],
	[p].[UnitPrice],
	[p].[ProductName]

