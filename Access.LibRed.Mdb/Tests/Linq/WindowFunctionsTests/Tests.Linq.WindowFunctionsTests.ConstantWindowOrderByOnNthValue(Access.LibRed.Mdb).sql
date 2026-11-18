-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	NTH_VALUE([t].[IntValue], 2) OVER ()
FROM
	[WindowFunctionTestEntity] [t]

