-- SqlCe
SELECT DISTINCT
	CAST([x].[Amount] AS Int)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010

-- SqlCe
SELECT DISTINCT TOP (2)
	CAST([x].[Amount] AS Int)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = 'A'

-- SqlCe
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[x].[Category]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND CAST([x].[Amount] AS Int) = @castOfA

-- SqlCe
DECLARE @castOfA Int -- Int32
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

-- SqlCe
SELECT DISTINCT
	CAST(SUM(CASE
		WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
		ELSE NULL
	END) AS Int)
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

-- SqlCe
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

