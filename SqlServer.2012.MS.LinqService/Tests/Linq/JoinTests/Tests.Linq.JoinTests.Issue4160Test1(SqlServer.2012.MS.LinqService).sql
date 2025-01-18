BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT DISTINCT
	(
		SELECT TOP (1)
			[cc].[Name]
		FROM
			[Issue4160City] [cc]
		WHERE
			[cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL
	)
FROM
	[Issue4160Person] [pe]

