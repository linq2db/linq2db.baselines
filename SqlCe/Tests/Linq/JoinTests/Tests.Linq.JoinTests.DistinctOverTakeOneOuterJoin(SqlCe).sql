-- SqlCe
SELECT DISTINCT
	[cc_1].[Name]
FROM
	[LookupPerson] [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[cc].[Name]
			FROM
				[LookupCity] [cc]
			WHERE
				[cc].[Code] = [t1].[Code] OR [cc].[Code] IS NULL AND [t1].[Code] IS NULL
		) [cc_1]

