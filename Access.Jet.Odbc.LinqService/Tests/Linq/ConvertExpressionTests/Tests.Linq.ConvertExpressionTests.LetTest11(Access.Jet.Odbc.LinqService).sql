BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF([t1].[cond] IS NULL, 0, [t1].[cond]),
	(
		SELECT TOP 1
			[c_2].[ParentID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ChildID] > -100
		ORDER BY
			[c_2].[ParentID]
	),
	(
		SELECT TOP 1
			[c_3].[ChildID]
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ChildID] > -100
		ORDER BY
			[c_3].[ParentID]
	)
FROM
	(
		SELECT
			(
				SELECT TOP 1
					[c_1].[ParentID]
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] > 0
				ORDER BY
					[c_1].[ParentID]
			) as [cond],
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [t1]
ORDER BY
	[t1].[ParentID]

