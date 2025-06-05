BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @param Decimal(2, 0)
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33
DECLARE @param_2 Decimal(2, 0)
SET     @param_2 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(18, 10)) / @param,
	[v].[Decimal] / @param_1,
	[v].[Double] / @param_2
FROM
	[Issue4469Table] [v]

