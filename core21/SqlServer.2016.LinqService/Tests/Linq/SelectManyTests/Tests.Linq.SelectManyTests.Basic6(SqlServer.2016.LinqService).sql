BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON [_].[ParentID] + 1 > 1 AND [cp].[ParentID] = [_].[ParentID]

