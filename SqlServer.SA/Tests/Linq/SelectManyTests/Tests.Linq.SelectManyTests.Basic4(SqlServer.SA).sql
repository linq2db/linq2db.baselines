BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		INNER JOIN [Child] [_] ON [p].[ParentID] = [_].[ParentID] + 1

