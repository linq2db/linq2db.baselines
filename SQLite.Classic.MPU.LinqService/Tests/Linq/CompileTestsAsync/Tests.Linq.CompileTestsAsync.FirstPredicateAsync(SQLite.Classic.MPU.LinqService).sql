BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	@p,
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @p
LIMIT 1

