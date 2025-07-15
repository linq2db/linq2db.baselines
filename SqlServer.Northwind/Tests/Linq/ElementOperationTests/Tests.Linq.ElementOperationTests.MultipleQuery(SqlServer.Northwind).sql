BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	(
		SELECT TOP (1)
			[zrp].[CategoryName]
		FROM
			[Categories] [zrp]
	)
FROM
	[Products] [p]

