-- SqlServer.2005.MS SqlServer.2005
SELECT DISTINCT
	CAST(Floor([x].[Amount]) AS Int)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT DISTINCT
			CAST(Floor([x].[Amount]) AS Int) as [c1]
		FROM
			[CategorySales] [x]
		WHERE
			[x].[Year] = 2010 AND [x].[Category] = N'A'
	) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	CAST(Floor(SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)) AS Int) = @castOfA

-- SqlServer.2005.MS SqlServer.2005
SELECT DISTINCT
	CAST(Floor(SUM(CASE
		WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
		ELSE NULL
	END)) AS Int)
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

-- SqlServer.2005.MS SqlServer.2005
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

