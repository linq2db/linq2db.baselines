BeforeExecute
-- SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
		WHERE
			IIF([_].[FirstName] = [_].[FirstName], 1, 0) <> IIF([_].[MiddleName] <> [_].[LastName], 1, 0)
	), 1, 0)

