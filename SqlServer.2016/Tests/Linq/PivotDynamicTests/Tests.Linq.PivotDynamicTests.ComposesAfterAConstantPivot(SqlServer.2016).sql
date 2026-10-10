-- SqlServer.2016
SELECT
	[r].[Category],
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) >= 15

