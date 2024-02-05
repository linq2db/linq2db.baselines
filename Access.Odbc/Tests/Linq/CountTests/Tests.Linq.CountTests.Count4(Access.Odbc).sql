BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

