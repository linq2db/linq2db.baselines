-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	LTrim([t].[VarCharColumn], 'ab')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

