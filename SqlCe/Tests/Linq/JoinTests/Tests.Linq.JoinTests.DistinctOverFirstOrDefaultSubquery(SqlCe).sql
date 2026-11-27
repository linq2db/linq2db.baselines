-- SqlCe
SELECT DISTINCT
	[t1].[Value_1]
FROM
	[LookupPerson] [pe]
		OUTER APPLY (
			SELECT TOP (1)
				[cc].[Name] as [Value_1]
			FROM
				[LookupCity] [cc]
			WHERE
				[cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL
		) [t1]

