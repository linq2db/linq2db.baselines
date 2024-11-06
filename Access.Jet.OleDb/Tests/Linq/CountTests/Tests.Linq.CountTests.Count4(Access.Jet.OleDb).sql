BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

