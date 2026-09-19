-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Category],
	[t1].[2000],
	[t1].[2010]
FROM
	[CategorySales] PIVOT (SUM([Amount]) FOR [Year] IN ([2000], [2010])) [t1]
ORDER BY
	[t1].[Category]

