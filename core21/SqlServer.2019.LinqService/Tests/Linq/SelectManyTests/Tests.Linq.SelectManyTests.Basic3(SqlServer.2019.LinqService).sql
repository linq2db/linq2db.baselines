BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp],
	[Child] [_]
WHERE
	[_].[ParentID] > 0

