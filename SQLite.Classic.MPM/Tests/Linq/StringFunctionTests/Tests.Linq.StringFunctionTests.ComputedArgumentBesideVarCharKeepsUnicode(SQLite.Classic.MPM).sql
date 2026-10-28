-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @search NVarChar(1) -- String
SET     @search = 'Ж'

SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], 'A', @suffix),
	Replace([t].[VarCharColumn], 'A', @suffix),
	Replace([t].[VarCharColumn], @search, '-')
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

