BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON [cp].[ParentID] = [_].[ParentID] + 1

