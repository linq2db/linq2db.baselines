-- SqlCe

SELECT
	[p].[Id],
	[a_Child].[Id] as [Id_1],
	[a_Child].[Name]
FROM
	[Issue3140Parent] [p]
		LEFT JOIN [Issue3140Child] [a_Child] ON [p].[ChildId] = [a_Child].[Id]

