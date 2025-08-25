BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

