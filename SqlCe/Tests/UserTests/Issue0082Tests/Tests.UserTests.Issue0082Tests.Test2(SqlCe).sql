-- SqlCe
SELECT
	[o].[ParentID],
	[t1].[CountResult],
	Coalesce([t2].[SumResult], 0)
FROM
	[Parent] [o]
		OUTER APPLY (
			SELECT
				COUNT(*) as [CountResult]
			FROM
				[Child] [a_Children]
			WHERE
				[o].[ParentID] = [a_Children].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				SUM([a_Children_1].[ParentID]) as [SumResult]
			FROM
				[Child] [a_Children_1]
			WHERE
				[o].[ParentID] = [a_Children_1].[ParentID]
		) [t2]

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Parent] [o]

-- SqlCe
SELECT
	[x].[ParentID],
	[t1].[CountResult],
	Coalesce([t2].[SumResult], 0)
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
				SUM([a_Children_1].[ParentID]) as [SumResult]
			FROM
				[Child] [a_Children_1]
			WHERE
				[x].[ParentID] = [a_Children_1].[ParentID]
		) [t2]
WHERE
	[t1].[CountResult] > 0

