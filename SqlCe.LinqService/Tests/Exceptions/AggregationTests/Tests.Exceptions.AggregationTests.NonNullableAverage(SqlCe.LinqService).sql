BeforeExecute
-- SqlCe (asynchronously)

SELECT
	AVG([t1].[ParentID]) as [AVG_1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] < 0

