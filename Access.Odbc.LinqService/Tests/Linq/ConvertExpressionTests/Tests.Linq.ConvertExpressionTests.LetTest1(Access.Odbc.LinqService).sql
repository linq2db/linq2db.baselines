BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	(
		SELECT TOP 1
			[a_Children_1].[ParentID]
		FROM
			[Child] [a_Children_1]
		WHERE
			[t1].[ParentID] = [a_Children_1].[ParentID]
	)
FROM
	(
		SELECT
			[p].[ParentID],
			(
				SELECT TOP 1
					[a_Children].[ParentID]
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID]
			) as [ParentID_1]
		FROM
			[Parent] [p]
	) [t1]
WHERE
	[t1].[ParentID_1] IS NOT NULL

