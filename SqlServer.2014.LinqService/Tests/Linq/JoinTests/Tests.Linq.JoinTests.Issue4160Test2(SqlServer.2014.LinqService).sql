BeforeExecute
-- SqlServer.2014

SELECT DISTINCT
	[cc_1].[Name]
FROM
	[Issue4160Person] [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[cc].[Name]
			FROM
				[Issue4160City] [cc]
			WHERE
				[cc].[Code] = [t1].[Code] OR [cc].[Code] IS NULL AND [t1].[Code] IS NULL
		) [cc_1]

