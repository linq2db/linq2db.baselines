-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 1

DELETE FROM
	[CompiledOutputTable]
WHERE
	[CompiledOutputTable].[Id] = @p
RETURNING
	[CompiledOutputTable].[Id],
	[CompiledOutputTable].[Value]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[Id]
FROM
	[CompiledOutputTable] [t]

