BeforeExecute
-- SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IS NULL
	), 1, 0)

