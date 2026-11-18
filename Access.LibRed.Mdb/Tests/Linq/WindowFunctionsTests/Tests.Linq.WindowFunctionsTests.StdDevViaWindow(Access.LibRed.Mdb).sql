-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	STDDEV([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

