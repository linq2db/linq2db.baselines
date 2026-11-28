-- SqlServer.2008
SELECT
	[r].[Category],
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.2008
SELECT
	[r].[Category],
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.2008
SELECT
	[r].[Category],
	CAST(Floor(SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)) AS Int)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

