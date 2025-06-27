BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[p].[CategoryID],
	[p].[CategoryName],
	[p].[Description],
	[p].[Picture]
FROM
	[Categories] [p]
WHERE
	CONTAINS([p].[CategoryName], N'some')

