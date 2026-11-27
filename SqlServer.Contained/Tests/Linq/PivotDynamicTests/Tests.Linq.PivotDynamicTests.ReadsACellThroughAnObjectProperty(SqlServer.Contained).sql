-- SqlServer.Contained SqlServer.2025
SELECT
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.Contained SqlServer.2025
SELECT
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.Contained SqlServer.2025
SELECT
	CAST(Floor(SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))) AS Int)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

