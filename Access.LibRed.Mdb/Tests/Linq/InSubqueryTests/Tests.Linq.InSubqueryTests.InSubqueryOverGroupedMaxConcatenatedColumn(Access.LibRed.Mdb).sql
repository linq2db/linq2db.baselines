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
				WHEN MAX([x_1].[LanguageID]) IS NULL THEN ''
				ELSE MAX([x_1].[LanguageID])
			END + 'test'
		FROM
			[Common_Language] [x_1]
		GROUP BY
			[x_1].[Name]
	)

