-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	[p].[Text] IS NULL OR LTRIM([p].[Text]) = ''

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[WhiteSpaceTextRow] [t1]

