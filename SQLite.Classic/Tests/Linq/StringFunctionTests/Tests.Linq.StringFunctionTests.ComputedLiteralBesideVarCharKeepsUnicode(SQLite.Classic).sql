-- SQLite.Classic SQLite
SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], 'A', 'Ж'),
	Replace([t].[VarCharColumn], 'A', 'Ж'),
	CASE
		WHEN [t].[VarCharColumn] IS NULL OR Length([t].[VarCharColumn]) >= 8
			THEN [t].[VarCharColumn]
		ELSE SUBSTR(REPLACE(HEX(ZEROBLOB(8)), '0', 'Ж'), 1, 8 - Length([t].[VarCharColumn])) || [t].[VarCharColumn]
	END
FROM
	[StringTypesTable] [t]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

