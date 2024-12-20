BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[a_Children].[ParentID] + [p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [a_Children].[ParentID] + [p].[ParentID] > 1 AND [p].[ParentID] = [a_Children].[ParentID]

