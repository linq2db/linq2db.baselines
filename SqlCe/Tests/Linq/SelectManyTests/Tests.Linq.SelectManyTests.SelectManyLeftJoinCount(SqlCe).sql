-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [c_1] ON [t1].[ParentID] = [c_1].[ParentID]

