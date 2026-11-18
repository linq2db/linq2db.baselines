-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	RTrim([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	RTrim([t].[VarCharColumn], 'ab')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

