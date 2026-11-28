-- Sybase.Managed Sybase
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

-- Sybase.Managed Sybase
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

-- Sybase.Managed Sybase
SELECT
	[r].[Category],
	CAST(SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END) AS Int)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

