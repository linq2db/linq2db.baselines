-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([t_1].[Sum_1] IS NULL, 0, [t_1].[Sum_1])
FROM
	(
		SELECT
			(
				SELECT
					IIF(SUM([a_Children].[ChildID]) IS NULL, 0, SUM([a_Children].[ChildID]))
				FROM
					[Child] [a_Children]
				WHERE
					[t].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1 AND
					[a_Children].[ParentID] < 10
			) as [Sum_1]
		FROM
			[Parent] [t]
	) [t_1]

