BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID],
	[x].[ChildID] MOD 2

