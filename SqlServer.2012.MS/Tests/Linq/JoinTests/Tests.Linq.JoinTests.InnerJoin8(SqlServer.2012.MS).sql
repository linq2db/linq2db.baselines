BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ParentID] + [p].[ParentID]
FROM
	[Child] [t]
		INNER JOIN [Parent] [p] ON [t].[ParentID] = [p].[ParentID]
WHERE
	[t].[ParentID] + [p].[ParentID] > 2

