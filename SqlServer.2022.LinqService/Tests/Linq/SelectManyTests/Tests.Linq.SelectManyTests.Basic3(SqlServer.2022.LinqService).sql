BeforeExecute
-- SqlServer.2022

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p],
	[Child] [_]
WHERE
	[_].[ParentID] + 1 > 1

