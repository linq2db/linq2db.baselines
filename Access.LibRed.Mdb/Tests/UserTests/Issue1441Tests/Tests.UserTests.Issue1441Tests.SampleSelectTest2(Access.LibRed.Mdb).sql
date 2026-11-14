-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON ([book].[AuthorId] = [author].[Id])

