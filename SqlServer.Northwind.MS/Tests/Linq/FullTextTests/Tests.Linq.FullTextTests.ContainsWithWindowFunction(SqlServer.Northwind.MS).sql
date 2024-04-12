BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	MAX([t1].[CategoryName]) OVER(PARTITION BY IIF([t1].[CategoryID] IS NOT NULL, 1, 0))
FROM
	[Categories] [t1]
WHERE
	CONTAINS(([t1].*), N'candy OR meat')

