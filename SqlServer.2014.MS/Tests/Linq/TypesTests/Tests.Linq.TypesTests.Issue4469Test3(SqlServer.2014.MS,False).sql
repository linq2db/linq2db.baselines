BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @param Int -- Int32
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33
DECLARE @param_2 Float -- Double
SET     @param_2 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param_1,
	[v].[Double] / @param_2
FROM
	[Issue4469Table] [v]

