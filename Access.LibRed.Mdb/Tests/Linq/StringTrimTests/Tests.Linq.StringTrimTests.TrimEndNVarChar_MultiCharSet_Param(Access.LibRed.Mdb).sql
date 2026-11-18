-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	RTrim(CASE
		WHEN [t].[NVarCharColumn] IS NULL THEN ''
		ELSE [t].[NVarCharColumn]
	END + '...++', '.+')
FROM
	[StringTrimTable] [t]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

