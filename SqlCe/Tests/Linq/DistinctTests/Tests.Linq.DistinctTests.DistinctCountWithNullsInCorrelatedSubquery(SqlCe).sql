-- SqlCe
SELECT
	[p].[ParentID],
	[t2].[Anonymous],
	[t4].[AfterWhere]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Anonymous]
			FROM
				(
					SELECT DISTINCT
						[x].[Value1]
					FROM
						[Parent] [x]
					WHERE
						[x].[ParentID] <= [p].[ParentID]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [AfterWhere]
			FROM
				(
					SELECT DISTINCT
						[v].[Value1] as [AfterWhere]
					FROM
						[Parent] [v]
					WHERE
						[v].[ParentID] <= [p].[ParentID] AND ([v].[Value1] <> 1 OR [v].[Value1] IS NULL)
				) [t3]
		) [t4]
ORDER BY
	[p].[ParentID]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

