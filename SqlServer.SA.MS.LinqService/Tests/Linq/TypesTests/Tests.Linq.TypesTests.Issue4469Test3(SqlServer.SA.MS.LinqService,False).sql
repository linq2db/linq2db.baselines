BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @param Float -- Double
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param_1,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]

