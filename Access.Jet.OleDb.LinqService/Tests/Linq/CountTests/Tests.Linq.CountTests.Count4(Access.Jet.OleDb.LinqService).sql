BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

