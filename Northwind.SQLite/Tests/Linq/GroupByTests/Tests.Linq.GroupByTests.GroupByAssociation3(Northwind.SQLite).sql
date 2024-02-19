BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[g_2].[CategoryName]
FROM
	(
		SELECT
			Count(*) as [Count_1],
			[a_Category].[CategoryName]
		FROM
			[Products] [g_1]
				LEFT JOIN [Categories] [a_Category] ON ([g_1].[CategoryID] = [a_Category].[CategoryID] OR [g_1].[CategoryID] IS NULL AND [a_Category].[CategoryID] IS NULL)
		GROUP BY
			[a_Category].[CategoryID],
			[a_Category].[CategoryName]
	) [g_2]
WHERE
	[g_2].[Count_1] = 12

