BeforeExecute
-- SqlCe

SELECT
	[t1].[COUNT_1],
	[t2].[COUNT_1] as [COUNT_2]
FROM
	[Parent] [t3]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[t3].[ParentID] = [c_1].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[GrandChild] [g_1]
			WHERE
				[t3].[ParentID] = [g_1].[ParentID]
		) [t2]

