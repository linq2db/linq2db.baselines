-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	CASE
		WHEN [t].[VarCharColumn] IS NULL OR Len([t].[VarCharColumn]) >= 8
			THEN [t].[VarCharColumn]
		ELSE STRING(8 - Len([t].[VarCharColumn]), 'Ж') + [t].[VarCharColumn]
	END
FROM
	[StringTypesTable] [t]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

