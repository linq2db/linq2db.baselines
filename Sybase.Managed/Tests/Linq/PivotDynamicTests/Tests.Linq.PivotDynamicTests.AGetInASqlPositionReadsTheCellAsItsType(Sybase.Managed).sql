-- Sybase.Managed Sybase
SELECT DISTINCT
	CAST([x].[Amount] AS Int)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010

-- Sybase.Managed Sybase
SELECT DISTINCT TOP 2
	CAST([x].[Amount] AS Int)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = 'A'

-- Sybase.Managed Sybase
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	[x].[Category]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND CAST([x].[Amount] AS Int) = @castOfA

-- Sybase.Managed Sybase
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	CAST(SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END) AS Int) = @castOfA

-- Sybase.Managed Sybase
SELECT DISTINCT
	CAST(SUM(CASE
		WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
		ELSE NULL
	END) AS Int)
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

-- Sybase.Managed Sybase
SELECT
	SUM(CASE
		WHEN [r].[Year] = 2000 THEN [r].[Amount]
		ELSE NULL
	END),
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]

