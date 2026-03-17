-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]

