BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [_]

