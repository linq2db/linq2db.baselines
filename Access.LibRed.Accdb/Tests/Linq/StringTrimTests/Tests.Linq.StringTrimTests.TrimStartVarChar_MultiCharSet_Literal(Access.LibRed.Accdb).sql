-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	LTrim([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

