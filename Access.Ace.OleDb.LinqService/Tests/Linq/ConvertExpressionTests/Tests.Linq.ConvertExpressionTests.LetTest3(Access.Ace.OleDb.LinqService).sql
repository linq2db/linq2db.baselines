BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	(
		SELECT TOP 1
			[t1].[ParentID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

