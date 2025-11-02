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
				[p1].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] + 1 < [p1].[ParentID] + 1
		) [t1]
WHERE
	[p1].[ParentID] > -1

