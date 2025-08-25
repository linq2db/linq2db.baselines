BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

