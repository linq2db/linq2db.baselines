BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID] DESC,
	[x].[ChildID] MOD 2

