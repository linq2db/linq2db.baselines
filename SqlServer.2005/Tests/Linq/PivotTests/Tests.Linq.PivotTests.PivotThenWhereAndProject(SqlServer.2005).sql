-- SqlServer.2005
SELECT
	[t1].[Category],
	[t1].[2010]
FROM
	[CategorySales] PIVOT (SUM([Amount]) FOR [Year] IN ([2000], [2010])) [t1]
WHERE
	[t1].[2010] >= 15
ORDER BY
	[t1].[Category]

