BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			IIF([t1].[FirstName] = [t1].[FirstName], 1, 0) = IIF(([t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL), 1, 0)
	), 1, 0)

