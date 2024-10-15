BeforeExecute
-- SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			IIF([t1].[MiddleName] = N'123', 1, 0) = IIF([t1].[MiddleName] = N'1', 1, 0)
	), 1, 0)

