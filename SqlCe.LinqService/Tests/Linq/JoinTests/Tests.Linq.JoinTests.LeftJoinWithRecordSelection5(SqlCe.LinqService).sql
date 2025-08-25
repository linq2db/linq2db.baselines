BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[f].[Id],
	[t].[Id] as [Id_1],
	[t].[FactId],
	[t].[Name]
FROM
	[Fact] [f]
		LEFT JOIN [Tag] [t] ON [t].[FactId] = [f].[Id]
WHERE
	[f].[Id] > 3
ORDER BY
	[f].[Id]

