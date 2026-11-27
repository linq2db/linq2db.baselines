-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[Category]
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) > 16

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[Category]
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) > 16

