-- SQLite.MS SQLite
SELECT
	[c_1].[Id],
	[r_1].[Key_1],
	[r_1].[Y2010]
FROM
	[CategorySales] [c_1]
		INNER JOIN (
			SELECT
				SUM(CASE
					WHEN [r].[Year] = 2010 THEN [r].[Amount]
					ELSE NULL
				END) as [Y2010],
				[r].[Category] as [Key_1]
			FROM
				[CategorySales] [r]
			GROUP BY
				[r].[Category]
		) [r_1] ON [r_1].[Key_1] = [c_1].[Category] OR [r_1].[Key_1] IS NULL AND [c_1].[Category] IS NULL

