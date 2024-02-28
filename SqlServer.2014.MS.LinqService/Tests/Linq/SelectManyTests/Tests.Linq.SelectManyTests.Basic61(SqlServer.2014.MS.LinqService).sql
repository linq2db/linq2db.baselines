BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON ([_].[ParentID] > 0 OR [_].[ParentID] > 1) AND [cp].[ParentID] = [_].[ParentID]
WHERE
	([_].[ParentID] > -1 OR [_].[ParentID] > 2)

