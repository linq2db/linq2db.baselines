BeforeExecute
-- SqlCe (asynchronously)

SELECT
	AVG([t1].[ParentID]) as [Average]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] < 0

