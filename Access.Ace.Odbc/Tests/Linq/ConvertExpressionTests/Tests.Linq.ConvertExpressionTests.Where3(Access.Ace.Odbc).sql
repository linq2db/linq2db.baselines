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
			) as [Sum_1],
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 1 AND
			[c_1].[ParentID] < 10
	)

