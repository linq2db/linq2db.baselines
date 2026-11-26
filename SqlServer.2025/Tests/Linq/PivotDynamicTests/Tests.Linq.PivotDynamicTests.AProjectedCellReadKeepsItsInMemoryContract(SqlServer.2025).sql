-- SqlServer.2025
SELECT
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)),
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]

