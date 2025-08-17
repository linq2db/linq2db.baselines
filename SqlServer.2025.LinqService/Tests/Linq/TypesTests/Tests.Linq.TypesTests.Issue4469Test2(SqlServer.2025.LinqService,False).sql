BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @param Decimal(2, 0)
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(18, 10)) / @param,
	[v].[Decimal] / @param_1,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]

