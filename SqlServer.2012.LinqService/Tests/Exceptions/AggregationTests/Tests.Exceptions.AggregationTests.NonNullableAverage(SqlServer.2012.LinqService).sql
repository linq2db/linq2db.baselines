BeforeExecute
-- SqlServer.2012

SELECT
	AVG([t1].[ParentID])
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] < 0

