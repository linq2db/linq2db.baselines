-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			[t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL
	), 1, 0)

