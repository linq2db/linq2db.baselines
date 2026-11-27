-- SqlServer.2008.MS SqlServer.2008
SELECT
	[author].[Id],
	[author].[Name]
FROM
	[JoinAuthors] [author]
		INNER JOIN [JoinBooks] [book] ON [book].[AuthorId] = [author].[Id]

