BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		CROSS JOIN [Child] [_]
WHERE
	[_].[ParentID] > 0

