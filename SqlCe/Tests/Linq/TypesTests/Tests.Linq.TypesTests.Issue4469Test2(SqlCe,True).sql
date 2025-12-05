-- SqlCe

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(18, 10)) / 33 as [Integer_1],
	[v].[Decimal] / 33 as [Decimal_1],
	[v].[Double] / 33 as [Double_1]
FROM
	[Issue4469Table] [v]

