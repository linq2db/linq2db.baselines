BeforeExecute
-- SqlCe

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / 33 as [Integer_1],
	CAST([v].[Decimal] AS Float) / 33 as [Decimal_1],
	[v].[Double] / 33 as [Double_1]
FROM
	[Issue4469Table] [v]

