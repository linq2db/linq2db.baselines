BeforeExecute
-- SqlServer.2012

SELECT
	[a_Children].[ParentID] + [p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [a_Children].[ParentID] + [p].[ParentID] > 1 AND [p].[ParentID] = [a_Children].[ParentID]

