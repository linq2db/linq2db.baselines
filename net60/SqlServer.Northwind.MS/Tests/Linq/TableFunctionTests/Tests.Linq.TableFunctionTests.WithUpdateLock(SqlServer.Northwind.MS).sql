BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t].[CategoryID],
	[t].[CategoryName],
	[t].[Description],
	[t].[Picture]
FROM
	[Categories] [t] WITH (UPDLOCK)

