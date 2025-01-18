BeforeExecute
-- SqlCe
DECLARE @param Int -- Int32
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33
DECLARE @param_2 Float -- Double
SET     @param_2 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / @param as [Integer_1],
	CAST([v].[Decimal] AS Float) / @param_1 as [Decimal_1],
	[v].[Double] / @param_2 as [Double_1]
FROM
	[Issue4469Table] [v]

