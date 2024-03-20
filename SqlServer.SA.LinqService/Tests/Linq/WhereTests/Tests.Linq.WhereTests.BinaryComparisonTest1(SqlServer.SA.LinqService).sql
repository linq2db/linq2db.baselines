BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
		WHERE
			(IIF([_].[FirstName] = [_].[FirstName], 1, 0)) = (IIF(([_].[MiddleName] <> [_].[LastName] OR [_].[MiddleName] IS NULL), 1, 0))
	), 1, 0)

