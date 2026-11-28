-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT DISTINCT
	[x].[Amount]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT DISTINCT TOP 2
	[x].[Amount]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = 'A'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @castOfA  -- Int32
SET     @castOfA = 20

SELECT
	[x].[Category]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Amount] = @castOfA

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @castOfA  -- Int32
SET     @castOfA = 20

SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END) = @castOfA

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT DISTINCT
	SUM(CASE
		WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
		ELSE NULL
	END)
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

