BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON ([book].[AuthorId] = [author].[Id])

