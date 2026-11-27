-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r_1].[Category]
FROM
	(
		SELECT
			SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) as [Y2010],
			[r].[Category]
		FROM
			[Sales] [r]
		GROUP BY
			[r].[Category]
		UNION ALL
		SELECT
			SUM(IIF([x].[Year] = 2010, [x].[Amount], NULL)) as [Y2010],
			[x].[Category]
		FROM
			[Sales] [x]
		GROUP BY
			[x].[Category]
	) [r_1]
WHERE
	[r_1].[Y2010] > 16

