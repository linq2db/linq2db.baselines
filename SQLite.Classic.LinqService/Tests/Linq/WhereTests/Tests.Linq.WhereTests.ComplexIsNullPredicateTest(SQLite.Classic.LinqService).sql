BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
			WHERE
				CASE
					WHEN [t1].[MiddleName] = '123' THEN 1
					ELSE 0
				END = CASE
					WHEN [t1].[MiddleName] = '1' OR [t1].[MiddleName] = 'test' AND ([t1].[MiddleName] <> '1' OR [t1].[MiddleName] IS NULL)
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END

