-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	NTH_VALUE([t].[IntValue], 2) FROM LAST OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

