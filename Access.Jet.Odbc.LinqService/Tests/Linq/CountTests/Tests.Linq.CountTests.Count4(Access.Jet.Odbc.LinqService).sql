BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

