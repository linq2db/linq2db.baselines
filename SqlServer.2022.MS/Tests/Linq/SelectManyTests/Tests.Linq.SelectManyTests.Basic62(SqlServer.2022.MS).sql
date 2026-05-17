-- SqlServer.2022.MS SqlServer.2022

SELECT
	[a_Children].[ParentID] + [p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] + [p].[ParentID] > 1

