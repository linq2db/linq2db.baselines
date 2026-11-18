-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @param Decimal(2, 0)
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33

SELECT TOP 2
	[v].[Integer] / @param,
	[v].[Decimal] / @param_1,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]

