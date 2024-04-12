BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[ParentID] + [p].[ParentID]
FROM
	[Child] [t]
		INNER JOIN [Parent] [p] ON [t].[ParentID] = [p].[ParentID]
WHERE
	[t].[ParentID] + [p].[ParentID] > 2

