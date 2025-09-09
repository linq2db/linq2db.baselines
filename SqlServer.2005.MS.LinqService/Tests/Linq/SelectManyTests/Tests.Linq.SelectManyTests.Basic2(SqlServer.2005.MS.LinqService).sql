BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[t1].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]

