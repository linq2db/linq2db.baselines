SELECT [s].[Id]
FROM [People] AS [p]
INNER JOIN (
    SELECT [p0].[Id], [m].[PersonId]
    FROM [MmFriendship] AS [m]
    INNER JOIN [People] AS [p0] ON [m].[FriendId] = [p0].[Id]
) AS [s] ON [p].[Id] = [s].[PersonId]


-- SqlServer.2022

SELECT
	[o].[Id]
FROM
	[People] [f]
		INNER JOIN [MmFriendship] [j] ON [f].[Id] = [j].[PersonId]
		INNER JOIN [People] [o] ON [o].[Id] = [j].[FriendId]



