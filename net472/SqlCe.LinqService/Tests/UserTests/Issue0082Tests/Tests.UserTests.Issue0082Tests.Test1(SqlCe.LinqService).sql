BeforeExecute
-- SqlCe

SELECT
	[o].[ParentID],
	[t2].[CountResult],
	[t3].[Sum_1]
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
				Sum([od].[ParentID]) as [Sum_1],
				[od].[ParentID]
			FROM
				[Child] [od]
			GROUP BY
				[od].[ParentID]
		) [t3] ON [t3].[ParentID] = [o].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Parent] [o]

BeforeExecute
-- SqlCe

SELECT
	[x].[ParentID],
	[x].[CountResult],
	[x].[Sum_1]
FROM
	(
		SELECT
			[t2].[CountResult],
			[o].[ParentID],
			[t3].[Sum_1]
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
						Sum([od].[ParentID]) as [Sum_1],
						[od].[ParentID]
					FROM
						[Child] [od]
					GROUP BY
						[od].[ParentID]
				) [t3] ON [t3].[ParentID] = [o].[ParentID]
	) [x]
WHERE
	[x].[CountResult] > 0

