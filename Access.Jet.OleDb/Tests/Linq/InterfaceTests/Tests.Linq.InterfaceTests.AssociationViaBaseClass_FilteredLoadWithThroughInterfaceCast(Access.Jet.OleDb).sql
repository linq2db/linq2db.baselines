-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent_1].[ParentID] as [ParentID_1],
	[a_Parent_1].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN (
			SELECT
				[a_Parent].[ParentID],
				[a_Parent].[Value1]
			FROM
				[Parent] [a_Parent]
			WHERE
				[a_Parent].[Value1] = 1
		) [a_Parent_1] ON ([t1].[ParentID] = [a_Parent_1].[ParentID])

