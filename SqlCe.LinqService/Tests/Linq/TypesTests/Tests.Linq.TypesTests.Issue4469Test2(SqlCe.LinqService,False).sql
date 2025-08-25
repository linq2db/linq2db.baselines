BeforeExecute
-- SqlCe (asynchronously)
DECLARE @param Decimal(2, 0)
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(18, 10)) / @param as [Integer_1],
	[v].[Decimal] / @param_1 as [Decimal_1],
	[v].[Double] / @param as [Double_1]
FROM
	[Issue4469Table] [v]

