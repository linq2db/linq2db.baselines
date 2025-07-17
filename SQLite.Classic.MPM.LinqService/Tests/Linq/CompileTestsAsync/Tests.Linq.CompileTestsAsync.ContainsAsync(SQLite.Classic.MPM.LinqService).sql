BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	CASE
		WHEN @p IN (
			SELECT
				[c_1].[Id]
			FROM
				[AsyncDataTable] [c_1]
		)
			THEN 1
		ELSE 0
	END

