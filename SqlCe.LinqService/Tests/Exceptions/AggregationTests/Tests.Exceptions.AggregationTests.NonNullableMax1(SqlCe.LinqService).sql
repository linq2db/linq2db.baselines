BeforeExecute
-- SqlCe (asynchronously)

SELECT
	MAX([t1].[ParentID]) as [MAX_1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] < 0

