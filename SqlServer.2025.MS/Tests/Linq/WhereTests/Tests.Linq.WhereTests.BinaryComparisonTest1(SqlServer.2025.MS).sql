BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			[t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL
	), 1, 0)

