-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[Id],
	[a_Child].[Id] as [Id_1],
	[a_Child].[Name]
FROM
	[NestedProjectionParent] [p]
		LEFT JOIN [NestedProjectionChild] [a_Child] ON ([p].[ChildId] = [a_Child].[Id])

