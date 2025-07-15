BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			IIF((
				SELECT
					AVG([a_Children].[ParentID])
				FROM
					[Child] [a_Children]
				WHERE
					[g_1].[ParentID] = [a_Children].[ParentID]
			) > 3, True, False) as [Key_1]
		FROM
			[Parent] [g_1]
		WHERE
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [a_Children_1]
				WHERE
					[g_1].[ParentID] = [a_Children_1].[ParentID]
			) > 0
	) [g_2]
GROUP BY
	[g_2].[Key_1]

