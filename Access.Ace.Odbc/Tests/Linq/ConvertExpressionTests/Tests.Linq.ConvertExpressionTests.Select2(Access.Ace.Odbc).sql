-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([t1].[Sum_1] IS NULL, 0, [t1].[Sum_1])
FROM
	(
		SELECT
			(
				SELECT
					IIF(SUM([a_Children].[ChildID]) IS NULL, 0, SUM([a_Children].[ChildID]))
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1 AND
					[a_Children].[ParentID] < 10
			) as [Sum_1]
		FROM
			[Parent] [p]
	) [t1]

