BeforeExecute
-- SqlCe

SELECT DISTINCT
	[t1].[Value_1]
FROM
	[Issue4160Person] [pe]
		OUTER APPLY (
			SELECT TOP (1)
				[cc].[Name] as [Value_1]
			FROM
				[Issue4160City] [cc]
			WHERE
				[cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL
		) [t1]

