BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [_]

