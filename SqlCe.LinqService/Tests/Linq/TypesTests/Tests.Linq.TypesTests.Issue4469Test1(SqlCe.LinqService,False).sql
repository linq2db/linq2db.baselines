BeforeExecute
-- SqlCe (asynchronously)
DECLARE @param Int -- Int32
SET     @param = 33

SELECT TOP (2)
	[v].[Integer] / @param as [Integer_1],
	[v].[Decimal] / @param as [Decimal_1],
	[v].[Double] / @param as [Double_1]
FROM
	[Issue4469Table] [v]

