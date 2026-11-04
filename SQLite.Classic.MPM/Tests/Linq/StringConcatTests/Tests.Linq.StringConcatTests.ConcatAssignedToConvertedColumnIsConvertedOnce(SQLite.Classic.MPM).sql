-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p NVarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix NVarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	[ConvertedTargetRow]
SET
	[Conv] = Coalesce(@p, '') || [ConvertedTargetRow].[Sku] || Coalesce(@suffix, '')

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Conv]
FROM
	[ConvertedTargetRow] [t1]
LIMIT 2

