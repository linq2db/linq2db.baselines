-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	RANK() OVER ()
FROM
	[WindowFunctionTestEntity] [t]

