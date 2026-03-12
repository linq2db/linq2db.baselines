-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[ParentID],
	[a_Parent].[ID],
	[a_Parent].[GrandParentID],
	[a_GrandParent].[ID]
FROM
	[Child_3230] [t1]
		LEFT JOIN ([Parent_3230] [a_Parent]
			LEFT JOIN [GrandParent_3230] [a_GrandParent] ON [a_Parent].[GrandParentID] = [a_GrandParent].[ID])
		ON [t1].[ParentID] = [a_Parent].[ID]

-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[ParentID],
	[a_Parent].[ID],
	[a_Parent].[GrandParentID],
	[a_GrandParent].[ID]
FROM
	[Child_3230] [t1]
		LEFT JOIN ([Parent_3230] [a_Parent]
			LEFT JOIN [GrandParent_3230] [a_GrandParent] ON [a_Parent].[GrandParentID] = [a_GrandParent].[ID])
		ON [t1].[ParentID] = [a_Parent].[ID]

