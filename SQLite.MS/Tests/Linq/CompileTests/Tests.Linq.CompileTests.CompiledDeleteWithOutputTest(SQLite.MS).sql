-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 1

DELETE FROM
	[CompiledOutputTable]
WHERE
	[CompiledOutputTable].[Id] = @p
RETURNING
	[CompiledOutputTable].[Id],
	[CompiledOutputTable].[Value]

