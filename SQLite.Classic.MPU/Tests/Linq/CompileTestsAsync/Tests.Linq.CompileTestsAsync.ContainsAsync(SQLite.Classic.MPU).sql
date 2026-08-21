-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2

SELECT
	CASE
		WHEN @Id IN (
			SELECT
				[c_1].[Id]
			FROM
				[AsyncDataTable] [c_1]
		)
			THEN 1
		ELSE 0
	END

