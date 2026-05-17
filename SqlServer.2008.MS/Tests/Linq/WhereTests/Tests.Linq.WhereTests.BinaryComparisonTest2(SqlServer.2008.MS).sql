-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
			WHERE
				[t1].[MiddleName] = [t1].[LastName]
		)
			THEN 1
		ELSE 0
	END

