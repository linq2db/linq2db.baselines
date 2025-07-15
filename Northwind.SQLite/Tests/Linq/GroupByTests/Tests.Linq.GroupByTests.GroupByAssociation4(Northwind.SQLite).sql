BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[a_Category].[CategoryID]
FROM
	[Products] [g_1]
		LEFT JOIN [Categories] [a_Category] ON [g_1].[CategoryID] = [a_Category].[CategoryID]
GROUP BY
	[a_Category].[CategoryID]
HAVING
	COUNT(*) = 12

