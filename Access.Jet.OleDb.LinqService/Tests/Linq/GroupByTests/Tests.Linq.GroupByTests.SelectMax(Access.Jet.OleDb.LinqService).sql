BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

