BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID] + 1
FROM
	[Parent] [p],
	[Child] [t1]
WHERE
	[t1].[ParentID] > 0

