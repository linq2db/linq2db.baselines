-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT DISTINCT
	(
		SELECT TOP 1
			[cc].[Name]
		FROM
			[LookupCity] [cc]
		WHERE
			[cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL
	)
FROM
	[LookupPerson] [pe]

