BeforeExecute
-- SqlServer.2008

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		CROSS JOIN [Child] [_]
WHERE
	[_].[ParentID] > 0

