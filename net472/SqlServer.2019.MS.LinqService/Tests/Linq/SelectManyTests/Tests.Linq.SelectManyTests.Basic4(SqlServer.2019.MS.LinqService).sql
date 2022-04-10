BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON [cp].[ParentID] = [_].[ParentID] + 1

