BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [j] ON [p].[ParentID] = [j].[ParentID]
WHERE
	[p].[ParentID] = 1

