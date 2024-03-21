BeforeExecute
-- SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
		WHERE
			IIF([_].[MiddleName] = N'123', 1, 0) = IIF([_].[MiddleName] = N'1', 1, 0)
	), 1, 0)

