BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[Person] [t1]
			WHERE
				1 = 0
		)
			THEN 1
		ELSE 0
	END

