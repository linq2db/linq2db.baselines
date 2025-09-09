BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR LTRIM([p].[Text]) = ''

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

