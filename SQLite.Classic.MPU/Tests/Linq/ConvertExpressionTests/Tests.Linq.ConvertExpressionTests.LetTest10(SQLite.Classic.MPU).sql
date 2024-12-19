BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[Parent] [p]
		)
			THEN 1
		ELSE 0
	END

