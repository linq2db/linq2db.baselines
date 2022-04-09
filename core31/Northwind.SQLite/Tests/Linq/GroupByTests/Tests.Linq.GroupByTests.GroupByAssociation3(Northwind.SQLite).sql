BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[a_Category].[CategoryName]
FROM
	[Products] [t1]
		LEFT JOIN [Categories] [a_Category] ON [t1].[CategoryID] = [a_Category].[CategoryID]
GROUP BY
	[a_Category].[CategoryID],
	[a_Category].[CategoryName]
HAVING
	Count(*) = 12

