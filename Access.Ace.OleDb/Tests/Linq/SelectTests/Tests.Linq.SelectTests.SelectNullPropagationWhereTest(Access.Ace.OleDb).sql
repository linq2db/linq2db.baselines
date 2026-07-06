-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1],
	[c_1].[ParentID] as [ParentID_1],
	[c_1].[ChildID],
	[a_Parent].[ParentID] as [ParentID_2],
	[a_Parent].[Value1] as [Value1_1],
	[t1].[ParentID] as [ParentID_3],
	[t1].[Value1] as [Value1_2],
	IIF([a_Parent].[ParentID] IS NOT NULL, [a_Parent].[Value1], NULL) as [Value1_3]
FROM
	([Parent] [t1]
		INNER JOIN [Child] [c_1] ON ([c_1].[ParentID] = [t1].[ParentID]))
		LEFT JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
WHERE
	[t1].[ParentID] > 0 OR [t1].[Value1] > 0 OR [a_Parent].[Value1] > 0
ORDER BY
	[t1].[ParentID],
	[t1].[Value1],
	[a_Parent].[Value1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID] as [ParentID_1],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON ([t1].[ParentID] = [a_Parent].[ParentID])

