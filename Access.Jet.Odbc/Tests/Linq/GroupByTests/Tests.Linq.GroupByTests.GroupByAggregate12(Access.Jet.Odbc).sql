-- Access.Jet.Odbc AccessODBC

SELECT DISTINCT
	IIF((
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[g_1].[ParentID] = [a_Children].[ParentID]
	) > 0 AND (
		SELECT
			AVG([a_Children_1].[ParentID])
		FROM
			[Child] [a_Children_1]
		WHERE
			[g_1].[ParentID] = [a_Children_1].[ParentID]
	) > 3, True, False)
FROM
	[Parent] [g_1]

