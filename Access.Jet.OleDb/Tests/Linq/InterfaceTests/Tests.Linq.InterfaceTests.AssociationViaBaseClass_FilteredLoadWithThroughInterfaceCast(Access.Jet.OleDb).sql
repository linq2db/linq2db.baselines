-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID] as [ParentID_1],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON ([t1].[ParentID] = [a_Parent].[ParentID] AND [a_Parent].[Value1] = 1)

