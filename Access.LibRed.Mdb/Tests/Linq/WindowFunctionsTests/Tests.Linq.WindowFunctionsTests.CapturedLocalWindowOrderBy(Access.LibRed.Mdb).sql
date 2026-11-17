-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	ROW_NUMBER() OVER ()
FROM
	[WindowFunctionTestEntity] [t]

