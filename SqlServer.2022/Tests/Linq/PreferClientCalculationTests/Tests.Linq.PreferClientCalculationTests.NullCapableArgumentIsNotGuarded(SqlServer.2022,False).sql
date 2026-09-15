-- SqlServer.2022
SELECT
	Coalesce([j].[Name], N'') + N'!'
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

