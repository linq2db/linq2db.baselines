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
WHERE
	[t2].[CountResult] > 0

