-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value],
	'M' + CStr([t1].[Id])
FROM
	[InstanceClass] [t1]

