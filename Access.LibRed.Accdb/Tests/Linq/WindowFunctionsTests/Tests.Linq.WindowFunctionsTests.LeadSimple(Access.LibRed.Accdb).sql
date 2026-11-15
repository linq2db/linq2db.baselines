-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	LEAD([t].[IntValue]) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

