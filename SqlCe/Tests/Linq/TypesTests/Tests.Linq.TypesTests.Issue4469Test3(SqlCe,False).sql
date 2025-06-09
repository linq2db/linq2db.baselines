BeforeExecute
-- SqlCe
DECLARE @param Float -- Double
SET     @param = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / @param as [Integer_1],
	CAST([v].[Decimal] AS Float) / @param as [Decimal_1],
	[v].[Double] / @param as [Double_1]
FROM
	[Issue4469Table] [v]

