-- SqlServer.Northwind SqlServer.2019

SELECT
	MAX([t1].[CategoryName]) OVER(PARTITION BY 1)
FROM
	[Categories] [t1]
WHERE
	CONTAINS(([t1].*), N'candy OR meat')

