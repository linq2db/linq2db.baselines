BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	(
		SELECT TOP 1
			[t1].[ChildID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

