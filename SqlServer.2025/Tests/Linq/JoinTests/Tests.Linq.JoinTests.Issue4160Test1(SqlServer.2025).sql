-- SqlServer.2025

SELECT DISTINCT
	(
		SELECT TOP (1)
			[cc].[Name] as [Value_1]
		FROM
			[Issue4160City] [cc]
		WHERE
			[cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL
	)
FROM
	[Issue4160Person] [pe]

