-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	[t].[Id],
	CASE
		WHEN (Coalesce([t].[VarCharColumn], '') || Coalesce(@suffix, '')) > [t].[NVarCharColumn] OR [t].[NVarCharColumn] IS NULL
			THEN 1
		WHEN (Coalesce([t].[VarCharColumn], '') || Coalesce(@suffix, '')) = [t].[NVarCharColumn]
			THEN 0
		ELSE -1
	END,
	RTRIM(Coalesce([t].[VarCharColumn], '') || Coalesce(@suffix, ''))
FROM
	[StringTypesTable] [t]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	[t].[Id]
FROM
	[StringTypesTable] [t]
WHERE
	(Coalesce([t].[VarCharColumn], '') || Coalesce(@suffix, '')) LIKE [t].[NVarCharColumn]

