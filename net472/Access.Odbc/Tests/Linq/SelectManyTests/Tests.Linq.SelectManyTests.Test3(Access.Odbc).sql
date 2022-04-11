BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p],
			[Person] [t]
	) [cross_1]
		INNER JOIN [GrandChild] [g_1] ON ([cross_1].[ParentID] = [g_1].[ParentID])

