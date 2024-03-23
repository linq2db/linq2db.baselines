BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [_]

