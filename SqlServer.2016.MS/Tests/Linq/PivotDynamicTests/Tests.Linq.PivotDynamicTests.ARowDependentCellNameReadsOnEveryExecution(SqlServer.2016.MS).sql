-- SqlServer.2016.MS SqlServer.2016
SELECT
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)),
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)),
	IIF([r].[Category] = N'A', N'Y2000', N'Y2010')
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
ORDER BY
	[r].[Category]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)),
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)),
	IIF([r].[Category] = N'A', N'Y2000', N'Y2010')
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
ORDER BY
	[r].[Category]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)),
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)),
	IIF([r].[Category] = N'A', N'Y2000', N'Y2010')
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
ORDER BY
	[r].[Category]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)),
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)),
	IIF([r].[Category] = N'A', N'Y2000', N'Y2010')
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
ORDER BY
	[r].[Category]

