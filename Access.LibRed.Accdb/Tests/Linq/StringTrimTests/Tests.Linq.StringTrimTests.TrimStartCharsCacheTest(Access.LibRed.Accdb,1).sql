-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	LTrim([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

