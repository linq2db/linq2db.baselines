-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT DISTINCT
	(
		SELECT TOP 1
			[cc].[Name]
		FROM
			[LookupCity] [cc]
		WHERE
			[cc].[Code] = [t1].[Code] OR [cc].[Code] IS NULL AND [t1].[Code] IS NULL
	)
FROM
	[LookupPerson] [t1]

