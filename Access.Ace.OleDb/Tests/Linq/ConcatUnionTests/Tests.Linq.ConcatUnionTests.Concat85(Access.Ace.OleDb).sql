-- Access.Ace.OleDb AccessOleDb

SELECT
	[c_1].[ParentID],
	IIF([c_1].[Value1] IS NULL, 0, [c_1].[Value1]),
	[c_1].[ParentID]
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ParentID] + 1,
	[c_2].[ChildID]
FROM
	[Child] [c_2]

