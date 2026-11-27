-- SqlServer.2019
SELECT
	[author].[Id],
	[author].[Name]
FROM
	[JoinAuthors] [author]
		INNER JOIN [JoinBooks] [book] ON [book].[AuthorId] = [author].[Id]

