-- SqlServer.2017.MS SqlServer.2017
SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL))
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Decimal(12, 10)
SET     @p = 20.0000000000

SELECT
	[x].[Id]
FROM
	[CategorySales] [x]
WHERE
	[x].[Amount] = @p

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Cells Decimal(12, 10)
SET     @Cells = 20.0000000000

SELECT
	[x].[Id]
FROM
	[CategorySales] [x]
WHERE
	[x].[Amount] = @Cells

