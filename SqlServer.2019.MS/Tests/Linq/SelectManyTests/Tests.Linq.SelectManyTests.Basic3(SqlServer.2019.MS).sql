BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [_]
WHERE
	[_].[ParentID] + 1 > 1

