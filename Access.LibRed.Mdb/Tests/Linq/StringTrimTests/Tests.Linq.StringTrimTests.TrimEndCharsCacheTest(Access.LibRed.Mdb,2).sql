-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	RTrim([t].[VarCharColumn], 'ab')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

