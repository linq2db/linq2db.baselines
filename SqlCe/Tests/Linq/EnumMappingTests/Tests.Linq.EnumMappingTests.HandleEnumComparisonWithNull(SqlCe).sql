-- SqlCe

SELECT
	[x].[Type] as [Type_1],
	[x].[OwnerId],
	[a_Owner].[Id],
	[a_Owner].[Name]
FROM
	[Item] [x]
		LEFT JOIN [Owner] [a_Owner] ON [x].[OwnerId] = [a_Owner].[Id]

