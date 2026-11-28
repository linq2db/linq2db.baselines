-- SqlServer.2014.MS SqlServer.2014
SELECT DISTINCT
	CAST(Floor([x].[Amount]) AS Int)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010

-- SqlServer.2014.MS SqlServer.2014
SELECT DISTINCT TOP (2)
	CAST(Floor([x].[Amount]) AS Int)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = N'A'

-- SqlServer.2014.MS SqlServer.2014
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[x].[Category]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND CAST(Floor([x].[Amount]) AS Int) = @castOfA

-- SqlServer.2014.MS SqlServer.2014
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	CAST(Floor(SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))) AS Int) = @castOfA

-- SqlServer.2014.MS SqlServer.2014
SELECT DISTINCT
	CAST(Floor(SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL))) AS Int)
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)),
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]

