-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[r_1].[Key_1],
	[r_1].[Y2010]
FROM
	(
		SELECT
			SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) as [Y2010],
			[r].[Category] as [Key_1]
		FROM
			[CategorySales] [r]
		GROUP BY
			[r].[Category]
		HAVING
			SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) >= 15
	) [r_1]
ORDER BY
	[r_1].[Y2010] DESC

