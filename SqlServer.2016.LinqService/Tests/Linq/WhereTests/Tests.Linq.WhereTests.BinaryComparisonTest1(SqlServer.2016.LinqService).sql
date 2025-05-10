BeforeExecute
-- SqlServer.2016

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			1 = CASE
				WHEN [t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL
					THEN 1
				WHEN [t1].[MiddleName] = [t1].[LastName] AND [t1].[MiddleName] IS NOT NULL
					THEN 0
				ELSE NULL
			END
	), 1, 0)

