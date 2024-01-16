BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	MAX([c1].[CategoryName]) OVER(PARTITION BY IIF([c1].[CategoryID] IS NOT NULL, 1, 0))
FROM
	[Categories] [c1]
WHERE
	CONTAINS(([c1].*), N'candy OR meat')

