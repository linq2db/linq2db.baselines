BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[ParentID],
	[a_Parent].[ID],
	[a_Parent].[GrandParentID],
	[a_GrandParent].[ID]
FROM
	[Child_3230] [t1]
		LEFT JOIN [Parent_3230] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ID]
		LEFT JOIN [GrandParent_3230] [a_GrandParent] ON [a_Parent].[GrandParentID] = [a_GrandParent].[ID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[ParentID],
	[a_Parent].[ID],
	[a_Parent].[GrandParentID],
	[a_GrandParent].[ID]
FROM
	[Child_3230] [t1]
		LEFT JOIN [Parent_3230] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ID]
		LEFT JOIN [GrandParent_3230] [a_GrandParent] ON [a_Parent].[GrandParentID] = [a_GrandParent].[ID]

