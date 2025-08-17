BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

