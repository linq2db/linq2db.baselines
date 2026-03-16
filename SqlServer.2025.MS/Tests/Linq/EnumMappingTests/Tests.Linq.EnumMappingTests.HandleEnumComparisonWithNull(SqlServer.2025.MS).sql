-- SqlServer.2025.MS SqlServer.2025

SELECT
	[x].[Type],
	[x].[OwnerId],
	[a_Owner].[Id],
	[a_Owner].[Name]
FROM
	[Item] [x]
		LEFT JOIN [Owner] [a_Owner] ON [x].[OwnerId] = [a_Owner].[Id]

