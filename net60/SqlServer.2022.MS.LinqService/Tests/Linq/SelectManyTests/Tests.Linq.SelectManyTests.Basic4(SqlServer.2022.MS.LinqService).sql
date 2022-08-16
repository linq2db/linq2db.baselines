BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON [cp].[ParentID] = [_].[ParentID] + 1

