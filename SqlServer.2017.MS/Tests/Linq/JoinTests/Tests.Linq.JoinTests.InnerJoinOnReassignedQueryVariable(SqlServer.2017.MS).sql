-- SqlServer.2017.MS SqlServer.2017
SELECT
	[author].[Id],
	[author].[Name]
FROM
	[JoinAuthors] [author]
		INNER JOIN [JoinBooks] [book] ON [book].[AuthorId] = [author].[Id]

