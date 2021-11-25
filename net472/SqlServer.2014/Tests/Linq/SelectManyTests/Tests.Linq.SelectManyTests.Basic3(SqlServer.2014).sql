BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		CROSS JOIN [Child] [_]
WHERE
	[_].[ParentID] > 0

