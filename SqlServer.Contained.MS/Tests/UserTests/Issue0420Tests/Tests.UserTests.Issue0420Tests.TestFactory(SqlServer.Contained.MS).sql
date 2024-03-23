BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[a_Children].[ParentID],
	[a_Children].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]

