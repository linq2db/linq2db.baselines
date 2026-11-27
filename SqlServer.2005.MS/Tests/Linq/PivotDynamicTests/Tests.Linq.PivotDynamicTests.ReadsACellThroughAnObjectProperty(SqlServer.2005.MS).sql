-- SqlServer.2005.MS SqlServer.2005
SELECT
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	CAST(Floor(SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)) AS Int)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

