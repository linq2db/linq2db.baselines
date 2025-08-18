BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[f].[Id],
	[t].[Id],
	[t].[FactId],
	[t].[Name]
FROM
	[Fact] [f]
		LEFT JOIN [Tag] [t] ON [t].[FactId] = [f].[Id]
WHERE
	[f].[Id] > 3
ORDER BY
	[f].[Id]

