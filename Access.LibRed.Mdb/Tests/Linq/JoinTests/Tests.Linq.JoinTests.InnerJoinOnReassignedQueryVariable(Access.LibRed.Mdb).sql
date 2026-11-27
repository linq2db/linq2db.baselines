-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[author].[Id],
	[author].[Name]
FROM
	[JoinAuthors] [author]
		INNER JOIN [JoinBooks] [book] ON ([book].[AuthorId] = [author].[Id])

