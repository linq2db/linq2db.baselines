-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([t1].[ChildCount] IS NULL, 0, [t1].[ChildCount])
FROM
	(
		SELECT
			(
				SELECT
					SUM([a_Children].[ParentID] * [a_Children].[ChildID])
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 2
			) as [ChildCount]
		FROM
			[Parent] [p]
	) [t1]

