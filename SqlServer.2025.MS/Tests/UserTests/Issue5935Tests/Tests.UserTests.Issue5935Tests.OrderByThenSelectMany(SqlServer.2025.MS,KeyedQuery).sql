-- SqlServer.2025.MS SqlServer.2025
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[k_1].[item],
	[a_Tags].[Id],
	[a_Tags].[LogId],
	[a_Tags].[Name]
FROM
	(VALUES
		(1), (2)
	) [k_1]([item])
		INNER JOIN [ItemLog] [d] ON [k_1].[item] = [d].[ItemId]
		INNER JOIN [ItemTag] [a_Tags] ON [d].[Id] = [a_Tags].[LogId]
ORDER BY
	[d].[Id]

