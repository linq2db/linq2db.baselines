BeforeExecute
-- SqlCe
DECLARE @param Float -- Double
SET     @param = 33
DECLARE @param_1 Float -- Double
SET     @param_1 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / @param as [Integer_1],
	CAST([v].[Decimal] AS Float) / @param_1 as [Decimal_1],
	[v].[Double] / @param as [Double_1]
FROM
	[Issue4469Table] [v]

