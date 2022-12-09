BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t2].[CategoryName]
FROM
	(
		SELECT
			[a_Category].[CategoryID] as [c1],
			[a_Category].[CategoryName]
		FROM
			[Products] [t1]
				LEFT JOIN [Categories] [a_Category] ON [t1].[CategoryID] = [a_Category].[CategoryID]
	) [t2]
GROUP BY
	[t2].[c1],
	[t2].[CategoryName]
HAVING
	Count(*) = 12

