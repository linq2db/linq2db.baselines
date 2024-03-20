BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [j] ON [p].[ParentID] = [j].[ParentID]
WHERE
	[p].[ParentID] = 1

