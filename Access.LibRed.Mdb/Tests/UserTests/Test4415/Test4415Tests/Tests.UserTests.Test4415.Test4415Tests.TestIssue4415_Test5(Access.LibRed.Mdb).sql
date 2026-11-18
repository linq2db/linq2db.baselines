-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[LanguageID],
	[t1].[Name]
FROM
	[Common_Language] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[LanguageID],
	[x].[Name]
FROM
	[Common_Language] [x]
WHERE
	[x].[LanguageID] IN (
		SELECT
			CASE
				WHEN [t1].[Max_1] IS NULL THEN ''
				ELSE [t1].[Max_1]
			END + 'test'
		FROM
			(
				SELECT
					MAX([x_1].[LanguageID]) as [Max_1]
				FROM
					[Common_Language] [x_1]
				GROUP BY
					[x_1].[Name]
			) [t1]
	)

