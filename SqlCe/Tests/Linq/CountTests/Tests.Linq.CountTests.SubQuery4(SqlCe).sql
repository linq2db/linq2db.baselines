-- SqlCe

SELECT
	[t1].[COUNT_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Parent] [p1]
			WHERE
				[p1].[ParentID] = [p].[ParentID]
		) [t1]

