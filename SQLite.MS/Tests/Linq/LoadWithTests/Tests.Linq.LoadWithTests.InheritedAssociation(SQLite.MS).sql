-- SQLite.MS SQLite
SELECT
	[t1].[ID],
	[t1].[ParentID],
	[a_Parent].[ID],
	[a_Parent].[GrandParentID],
	[a_GrandParent].[ID]
FROM
	[InheritedChild] [t1]
		LEFT JOIN [InheritedParent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ID]
		LEFT JOIN [InheritedGrandParent] [a_GrandParent] ON [a_Parent].[GrandParentID] = [a_GrandParent].[ID]

-- SQLite.MS SQLite
SELECT
	[t1].[ID],
	[t1].[ParentID],
	[a_Parent].[ID],
	[a_Parent].[GrandParentID],
	[a_GrandParent].[ID]
FROM
	[InheritedChild] [t1]
		LEFT JOIN [InheritedParent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ID]
		LEFT JOIN [InheritedGrandParent] [a_GrandParent] ON [a_Parent].[GrandParentID] = [a_GrandParent].[ID]

