-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[c_1].[ChildID],
	IIF([c_1].[ChildID] IS NULL, 0, [c_1].[ChildID]) BETWEEN 0 AND 100,
	IIF([c_1].[ChildID] IS NULL, 0, [c_1].[ChildID]) NOT BETWEEN 0 AND 100,
	IIF([c_1].[ChildID] BETWEEN 0 AND 100, True, False)
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON ([p].[ParentID] = [c_1].[ParentID])
WHERE
	[p].[ParentID] = 5

