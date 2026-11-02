-- SqlCe
SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], 'A', 'Ж'),
	Replace([t].[VarCharColumn], 'A', 'Ж'),
	CASE
		WHEN [t].[VarCharColumn] IS NULL OR LEN([t].[VarCharColumn] + '.') >= 9
			THEN [t].[VarCharColumn]
		ELSE REPLICATE('Ж', 8 - (LEN([t].[VarCharColumn] + '.') - 1)) + [t].[VarCharColumn]
	END
FROM
	[StringTypesTable] [t]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

