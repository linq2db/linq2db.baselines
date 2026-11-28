-- SqlServer.2017
SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)) > 12

-- SqlServer.2017
SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) > 12

