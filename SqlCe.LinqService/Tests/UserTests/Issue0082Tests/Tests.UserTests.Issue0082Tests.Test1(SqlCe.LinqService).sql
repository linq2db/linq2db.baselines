BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t3].[ParentID],
	[t1].[Count_1],
	[t2].[Sum_1]
FROM
	[Parent] [t3]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [od]
			WHERE
				[t3].[ParentID] = [od].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				SUM([od_1].[ParentID]) as [Sum_1]
			FROM
				[Child] [od_1]
			WHERE
				[t3].[ParentID] = [od_1].[ParentID]
		) [t2]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[ParentID],
	[t1].[CountResult],
	[t2].[Sum_1]
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
				SUM([od_1].[ParentID]) as [Sum_1]
			FROM
				[Child] [od_1]
			WHERE
				[x].[ParentID] = [od_1].[ParentID]
		) [t2]
WHERE
	[t1].[CountResult] > 0

