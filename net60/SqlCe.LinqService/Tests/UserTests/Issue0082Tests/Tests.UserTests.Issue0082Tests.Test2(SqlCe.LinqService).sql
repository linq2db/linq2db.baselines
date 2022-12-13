BeforeExecute
-- SqlCe

SELECT
	[o].[ParentID],
	[t2].[CountResult],
	[t3].[SumResult]
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
		) [t2] ON [o].[ParentID] = [t2].[ParentID]
		LEFT JOIN (
			SELECT
				Sum([x].[ParentID]) as [SumResult],
				[x].[ParentID]
			FROM
				[Child] [x]
			GROUP BY
				[x].[ParentID]
		) [t3] ON [o].[ParentID] = [t3].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Parent] [o]

BeforeExecute
-- SqlCe

SELECT
	[x_1].[ParentID],
	[x_1].[CountResult],
	[x_1].[SumResult]
FROM
	(
		SELECT
			[t2].[CountResult],
			[o].[ParentID],
			[t3].[SumResult]
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
				) [t2] ON [o].[ParentID] = [t2].[ParentID]
				LEFT JOIN (
					SELECT
						Sum([x].[ParentID]) as [SumResult],
						[x].[ParentID]
					FROM
						[Child] [x]
					GROUP BY
						[x].[ParentID]
				) [t3] ON [o].[ParentID] = [t3].[ParentID]
	) [x_1]
WHERE
	[x_1].[CountResult] > 0

