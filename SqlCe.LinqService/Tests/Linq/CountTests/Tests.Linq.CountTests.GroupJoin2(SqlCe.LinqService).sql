BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[COUNT_1],
	[t2].[COUNT_1] as [COUNT_2]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[GrandChild] [g_1]
			WHERE
				[p].[ParentID] = [g_1].[ParentID]
		) [t2]

