BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[AsyncDataTable] [c_1]
		WHERE
			[c_1].[Id] = @p
	)

