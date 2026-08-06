-- Access.Jet.OleDb AccessOleDb
SELECT
	[c_1].[ParentID],
	[c_1].[ParentID] as [Value1_1]
FROM
	[Child] [c_1]
UNION ALL
SELECT
	IIF(False, 0, NULL) as [ParentID],
	[c_2].[ParentID] as [Value1_1]
FROM
	[Parent] [c_2]

