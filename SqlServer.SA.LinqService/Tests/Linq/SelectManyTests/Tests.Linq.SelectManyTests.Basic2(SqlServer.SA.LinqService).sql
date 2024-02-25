BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [_]

