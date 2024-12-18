BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

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
	[t1].[ProductName],
	[t1].[CategoryName],
	[t1].[UnitPrice]
FROM
	[ProductAndCategoryNamesOverTenDollars] [t1]
ORDER BY
	[t1].[CategoryName],
	[t1].[UnitPrice],
	[t1].[ProductName]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

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

