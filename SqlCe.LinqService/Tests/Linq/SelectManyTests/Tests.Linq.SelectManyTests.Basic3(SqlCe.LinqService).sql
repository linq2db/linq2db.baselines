BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ParentID] + 1 as [c1]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]
WHERE
	[t1].[ParentID] > 0

