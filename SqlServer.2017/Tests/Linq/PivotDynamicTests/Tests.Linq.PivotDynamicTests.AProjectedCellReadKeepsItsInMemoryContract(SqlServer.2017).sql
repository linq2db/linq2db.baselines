-- SqlServer.2017
SELECT
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)),
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)),
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]

