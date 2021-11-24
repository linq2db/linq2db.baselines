BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[a_Category].[CategoryID]
FROM
	[Products] [t1]
		LEFT JOIN [Categories] [a_Category] ON [t1].[CategoryID] = [a_Category].[CategoryID]
GROUP BY
	[a_Category].[CategoryID]
HAVING
	Count(*) = 12

