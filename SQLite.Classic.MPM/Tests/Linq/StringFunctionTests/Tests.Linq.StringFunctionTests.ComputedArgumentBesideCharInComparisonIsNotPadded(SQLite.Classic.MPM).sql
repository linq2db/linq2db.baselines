-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @dash VarChar(1) -- AnsiString
SET     @dash = '-'

SELECT
	[a].[Id],
	[b].[Id]
FROM
	[StringTypesTable] [a],
	[StringTypesTable] [b]
WHERE
	[b].[VarCharColumn] = RTRIM(Replace([a].[CharColumn], '?', @dash)) OR
	[b].[VarCharColumn] IS NULL AND [a].[CharColumn] IS NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

