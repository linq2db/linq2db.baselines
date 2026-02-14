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
			IIF([t1].[Max_1] IS NULL, '', [t1].[Max_1]) + 'test' as [c1]
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

