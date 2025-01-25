BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[t1].[COUNT_1]
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

