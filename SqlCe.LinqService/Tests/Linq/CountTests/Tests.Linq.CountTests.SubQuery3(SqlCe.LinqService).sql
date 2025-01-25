BeforeExecute
-- SqlCe

SELECT
	[p].[Value1],
	[t1].[COUNT_1],
	[t2].[COUNT_1] as [COUNT_2]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] = [p].[ParentID]
		) [t2]
WHERE
	[p].[ParentID] <> 5

