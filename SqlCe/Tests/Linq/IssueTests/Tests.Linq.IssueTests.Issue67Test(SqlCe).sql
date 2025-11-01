-- SqlCe

SELECT
	[t].[ParentID],
	[t1].[count_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				COUNT(*) as [count_1]
			FROM
				[Child] [c_1]
			WHERE
				[t].[ParentID] = [c_1].[ParentID]
		) [t1]
WHERE
	[t1].[count_1] > 0

