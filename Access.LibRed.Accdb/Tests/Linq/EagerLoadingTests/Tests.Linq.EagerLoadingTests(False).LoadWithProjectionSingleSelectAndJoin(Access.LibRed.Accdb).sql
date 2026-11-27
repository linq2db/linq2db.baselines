-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[ChildId],
	[a_Child].[Id] as [Id_1],
	[a_Child].[Name]
FROM
	[NestedProjectionParent] [t1]
		LEFT JOIN [NestedProjectionChild] [a_Child] ON ([t1].[ChildId] = [a_Child].[Id])

