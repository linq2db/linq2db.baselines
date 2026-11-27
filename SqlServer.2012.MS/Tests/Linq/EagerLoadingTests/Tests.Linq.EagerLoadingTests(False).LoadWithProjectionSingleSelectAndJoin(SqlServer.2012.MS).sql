-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[ChildId],
	[a_Child].[Id],
	[a_Child].[Name]
FROM
	[NestedProjectionParent] [t1]
		LEFT JOIN [NestedProjectionChild] [a_Child] ON [t1].[ChildId] = [a_Child].[Id]

