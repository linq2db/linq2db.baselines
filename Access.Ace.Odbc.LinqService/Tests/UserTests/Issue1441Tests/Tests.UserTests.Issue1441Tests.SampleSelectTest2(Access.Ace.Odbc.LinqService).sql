BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON ([book].[AuthorId] = [author].[Id])

