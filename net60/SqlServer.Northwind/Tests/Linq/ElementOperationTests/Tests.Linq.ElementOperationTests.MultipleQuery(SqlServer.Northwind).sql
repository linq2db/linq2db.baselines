BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[CategoryName]
FROM
	[Products] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[zrp].[CategoryName]
			FROM
				[Categories] [zrp]
		) [t1]

