BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[o].[ParentID],
	[t1].[COUNT_1],
	[t2].[SUM_1]
FROM
	[Parent] [o]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
			WHERE
				[o].[ParentID] = [a_Children].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				SUM([a_Children_1].[ParentID]) as [SUM_1]
			FROM
				[Child] [a_Children_1]
			WHERE
				[o].[ParentID] = [a_Children_1].[ParentID]
		) [t2]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Parent] [o]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[ParentID],
	[t1].[CountResult],
	[t2].[SUM_1]
FROM
	[Parent] [x]
		OUTER APPLY (
			SELECT
				COUNT(*) as [CountResult]
			FROM
				[Child] [a_Children]
			WHERE
				[x].[ParentID] = [a_Children].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				SUM([a_Children_1].[ParentID]) as [SUM_1]
			FROM
				[Child] [a_Children_1]
			WHERE
				[x].[ParentID] = [a_Children_1].[ParentID]
		) [t2]
WHERE
	[t1].[CountResult] > 0

