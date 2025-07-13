BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	MIN([t2].[ParentID])
FROM
	(
		SELECT TOP 3
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

