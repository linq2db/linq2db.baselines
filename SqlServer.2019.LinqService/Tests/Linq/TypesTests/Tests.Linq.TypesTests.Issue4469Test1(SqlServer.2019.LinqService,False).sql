BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @param Int -- Int32
SET     @param = 33

SELECT TOP (2)
	[v].[Integer] / @param,
	[v].[Decimal] / @param,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]

