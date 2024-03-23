BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t].[CategoryID],
	[t].[CategoryName],
	[t].[Description],
	[t].[Picture]
FROM
	[Categories] [t]
WHERE
	NOT FREETEXT(([t].*), N'sweet')

