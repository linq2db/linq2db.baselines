BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			(1 = 1) = CASE
				WHEN [t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL
					THEN 1
				ELSE 0
			END
	)

