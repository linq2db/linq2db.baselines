BeforeExecute
-- SqlCe

SELECT
	[t1].[COUNT_1]
FROM
	[Parent] [p1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Children].[ParentID] + 1 < [p1].[ParentID] + 2 AND
				[a_Children].[ParentID] + 1 < [p1].[ParentID] + 2 AND
				[p1].[ParentID] = [a_Children].[ParentID]
		) [t1]
WHERE
	[p1].[ParentID] > -2 AND [p1].[ParentID] > -1

