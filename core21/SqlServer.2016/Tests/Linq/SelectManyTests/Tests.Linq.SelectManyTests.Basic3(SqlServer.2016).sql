BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp],
	[Child] [_]
WHERE
	[_].[ParentID] > 0

