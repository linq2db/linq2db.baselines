-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @param  -- Double
SET     @param = 33

SELECT TOP 2
	[v].[Integer] / @param,
	[v].[Decimal] / @param,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]

