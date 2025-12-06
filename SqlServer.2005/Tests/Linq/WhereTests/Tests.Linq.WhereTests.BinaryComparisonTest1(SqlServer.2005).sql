-- SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
			WHERE
				[t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL
		)
			THEN 1
		ELSE 0
	END

