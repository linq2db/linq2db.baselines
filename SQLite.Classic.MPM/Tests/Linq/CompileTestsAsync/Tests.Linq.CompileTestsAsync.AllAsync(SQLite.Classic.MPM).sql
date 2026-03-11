-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[AsyncDataTable] [c_1]
		WHERE
			[c_1].[Id] <> @p
	)

