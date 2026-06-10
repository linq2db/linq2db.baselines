SELECT [p].[Id]
FROM [People] AS [p]
WHERE EXISTS (
    SELECT 1
    FROM [MmFriendship] AS [m]
    INNER JOIN [People] AS [p0] ON [m].[PersonId] = [p0].[Id]
    WHERE [p].[Id] = [m].[FriendId] AND [p0].[Name] = N'Alice')
ORDER BY [p].[Id]


-- SqlServer.2017

SELECT
	[p].[Id]
FROM
	[People] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[MmFriendship] [f]
				INNER JOIN [People] [o] ON [o].[Id] = [f].[PersonId]
		WHERE
			[p].[Id] = [f].[FriendId] AND [o].[Name] = N'Alice'
	)
ORDER BY
	[p].[Id]



