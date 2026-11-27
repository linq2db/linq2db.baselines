-- SqlServer.2012.MS SqlServer.2012
SELECT
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	CAST(Floor(SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))) AS Int)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

