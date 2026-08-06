-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID] as [ParentID_1],
	[c_1].[ChildID],
	[a_Parent].[ParentID] as [ParentID_2],
	[a_Parent].[Value1] as [Value1_1],
	[p].[ParentID] as [ParentID_3],
	[p].[Value1] as [Value1_2],
	IIF([a_Parent].[ParentID] IS NOT NULL, [a_Parent].[Value1], NULL) as [Value1_3]
FROM
	([Parent] [p]
		INNER JOIN [Child] [c_1] ON ([c_1].[ParentID] = [p].[ParentID]))
		LEFT JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
WHERE
	[p].[ParentID] > 0 OR [p].[Value1] > 0 OR [a_Parent].[Value1] > 0

