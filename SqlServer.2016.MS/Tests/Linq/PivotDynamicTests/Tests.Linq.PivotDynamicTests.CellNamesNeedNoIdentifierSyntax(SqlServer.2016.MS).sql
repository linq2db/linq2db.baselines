-- SqlServer.2016.MS SqlServer.2016
SELECT
	[r].[Category],
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)),
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)) >= 5

