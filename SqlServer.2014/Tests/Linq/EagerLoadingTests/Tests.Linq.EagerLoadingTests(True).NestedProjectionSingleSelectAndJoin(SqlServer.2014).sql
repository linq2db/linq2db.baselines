-- SqlServer.2014
SELECT
	[p].[Id],
	[a_Child].[Id],
	[a_Child].[Name]
FROM
	[NestedProjectionParent] [p]
		LEFT JOIN [NestedProjectionChild] [a_Child] ON [p].[ChildId] = [a_Child].[Id]

