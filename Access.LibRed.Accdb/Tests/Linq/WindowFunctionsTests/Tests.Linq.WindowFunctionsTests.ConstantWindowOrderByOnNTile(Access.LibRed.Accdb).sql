-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	NTILE(4) OVER ()
FROM
	[WindowFunctionTestEntity] [t]

