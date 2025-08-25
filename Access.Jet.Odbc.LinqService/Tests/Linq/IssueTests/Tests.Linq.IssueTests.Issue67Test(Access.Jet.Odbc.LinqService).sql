BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[t_1].[ParentID],
	[t_1].[count_1]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [c_1]
				WHERE
					[t].[ParentID] = [c_1].[ParentID]
			) as [count_1],
			[t].[ParentID]
		FROM
			[Parent] [t]
	) [t_1]
WHERE
	[t_1].[count_1] > 0

