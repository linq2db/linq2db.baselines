-- SqlCe

SELECT
	[f].[Id],
	[t1].[Id] as [Id_1],
	[t1].[FactId],
	[t1].[Name]
FROM
	[Tag] [t1]
		RIGHT JOIN [Fact] [f] ON [t1].[FactId] = [f].[Id]
WHERE
	[f].[Id] > 3
ORDER BY
	[f].[Id]

