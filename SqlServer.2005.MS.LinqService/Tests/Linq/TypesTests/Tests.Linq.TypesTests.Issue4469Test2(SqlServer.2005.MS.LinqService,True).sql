BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(18, 10)) / 33,
	[v].[Decimal] / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]

