-- SqlServer.2022
SELECT
	[r].[Category],
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.2022
SELECT
	[r].[Category],
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.2022
SELECT
	[r].[Category],
	CAST(Floor(SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))) AS Int)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

