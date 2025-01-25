BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
			WHERE
				1 = 0
		)
			THEN 1
		ELSE 0
	END

