BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[Person] [p]
			WHERE
				1 = 0
		)
			THEN 1
		ELSE 0
	END

