BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(38, 17)) / 33,
	[v].[Decimal] / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]

