BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [j] ON [p].[ParentID] = [j].[ParentID]
WHERE
	[p].[ParentID] = 1

