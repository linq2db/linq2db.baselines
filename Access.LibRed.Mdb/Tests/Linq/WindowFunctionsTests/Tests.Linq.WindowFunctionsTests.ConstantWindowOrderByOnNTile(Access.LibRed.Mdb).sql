-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	NTILE(4) OVER ()
FROM
	[WindowFunctionTestEntity] [t]

