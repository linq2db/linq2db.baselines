-- Access.Ace.Odbc AccessODBC

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT DISTINCT
			IIF((
				SELECT
					AVG([a_Children].[ParentID]) as [Average]
				FROM
					[Child] [a_Children]
				WHERE
					[g_1].[ParentID] = [a_Children].[ParentID]
			) > 3, True, False) as [Key_1]
		FROM
			[Parent] [g_1]
	) [g_2]
ORDER BY
	[g_2].[Key_1]

