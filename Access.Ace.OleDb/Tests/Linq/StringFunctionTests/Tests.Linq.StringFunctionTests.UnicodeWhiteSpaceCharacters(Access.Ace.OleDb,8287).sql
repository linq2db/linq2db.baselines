-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	NOT ([p].[Text] IS NULL OR LTRIM([p].[Text]) = '')

