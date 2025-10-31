-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[LanguageID],
	[t1].[Name]
FROM
	[Common_Language] [t1]

-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[LanguageID],
	[x].[Name]
FROM
	[Common_Language] [x]
WHERE
	[x].[LanguageID] IN (
		SELECT
			IIF(MAX([x_1].[LanguageID]) IS NULL, '', MAX([x_1].[LanguageID])) + 'test'
		FROM
			[Common_Language] [x_1]
		GROUP BY
			[x_1].[Name]
	)

