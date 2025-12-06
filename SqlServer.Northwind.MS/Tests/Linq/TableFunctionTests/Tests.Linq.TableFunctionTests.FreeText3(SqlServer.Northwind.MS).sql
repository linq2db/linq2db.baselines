-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t].[CategoryID],
	[t].[CategoryName],
	[t].[Description],
	[t].[Picture]
FROM
	[Categories] [t]
WHERE
	FREETEXT(([t].*), N'sweet')

