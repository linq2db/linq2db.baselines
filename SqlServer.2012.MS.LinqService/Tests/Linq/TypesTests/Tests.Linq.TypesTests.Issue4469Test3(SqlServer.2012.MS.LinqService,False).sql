BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @param Float -- Double
SET     @param = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]

