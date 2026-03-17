-- SqlCe

SELECT
	[t3].[ParentID],
	[t1].[CountResult],
	[t2].[SumResult]
FROM
	[Parent] [t3]
		OUTER APPLY (
			SELECT
				COUNT(*) as [CountResult]
			FROM
				[Child] [od]
			WHERE
				[t3].[ParentID] = [od].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				SUM([od_1].[ParentID]) as [SumResult]
			FROM
				[Child] [od_1]
			WHERE
				[t3].[ParentID] = [od_1].[ParentID]
		) [t2]

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Parent] [t1]

-- SqlCe

SELECT
	[x].[ParentID],
	[t1].[CountResult],
	[t2].[SumResult]
FROM
	[Parent] [x]
		OUTER APPLY (
			SELECT
				COUNT(*) as [CountResult]
			FROM
				[Child] [od]
			WHERE
				[x].[ParentID] = [od].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				SUM([od_1].[ParentID]) as [SumResult]
			FROM
				[Child] [od_1]
			WHERE
				[x].[ParentID] = [od_1].[ParentID]
		) [t2]
WHERE
	[t1].[CountResult] > 0

