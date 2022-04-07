BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[o].[ParentID],
	[t2].[CountResult],
	(
		SELECT
			Sum([x].[ParentID])
		FROM
			[Child] [x]
		WHERE
			[o].[ParentID] = [x].[ParentID]
	)
FROM
	[Parent] [o]
		LEFT JOIN (
			SELECT
				Count(*) as [CountResult],
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON ([o].[ParentID] = [t2].[ParentID])

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Parent] [o]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[x_1].[ParentID],
	[x_1].[CountResult],
	[x_1].[SumResult]
FROM
	(
		SELECT
			[t2].[CountResult],
			[o].[ParentID],
			(
				SELECT
					Sum([x].[ParentID])
				FROM
					[Child] [x]
				WHERE
					[o].[ParentID] = [x].[ParentID]
			) as [SumResult]
		FROM
			[Parent] [o]
				LEFT JOIN (
					SELECT
						Count(*) as [CountResult],
						[t1].[ParentID]
					FROM
						[Child] [t1]
					GROUP BY
						[t1].[ParentID]
				) [t2] ON ([o].[ParentID] = [t2].[ParentID])
	) [x_1]
WHERE
	[x_1].[CountResult] > 0

