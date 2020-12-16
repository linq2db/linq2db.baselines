BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON [cp].[ParentID] = [_].[ParentID] + 1

