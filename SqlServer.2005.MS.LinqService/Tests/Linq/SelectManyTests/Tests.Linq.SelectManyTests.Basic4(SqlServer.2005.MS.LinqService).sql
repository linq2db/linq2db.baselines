BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		INNER JOIN [Child] [_] ON [p].[ParentID] = [_].[ParentID] + 1

