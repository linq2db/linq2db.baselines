BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID] + 1,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	IIF([c_2].[Value1] IS NULL, 0, [c_2].[Value1]),
	[c_2].[ParentID]
FROM
	[Parent] [c_2]

