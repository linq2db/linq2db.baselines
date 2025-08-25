BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	MAX([t1].[ParentID])
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] < 0

