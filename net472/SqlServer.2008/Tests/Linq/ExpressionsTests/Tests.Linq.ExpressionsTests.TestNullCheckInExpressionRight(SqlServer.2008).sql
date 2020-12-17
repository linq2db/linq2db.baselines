BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [p]
			WHERE
				[p].[PersonID] IS NULL
		)
			THEN 1
		ELSE 0
	END

