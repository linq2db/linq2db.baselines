-- SqlCe

SELECT
	[t1].[ParentID] + 1 as [c1]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]

