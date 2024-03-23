BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[a_Children].[ParentID],
	[a_Children].[ChildID]
FROM
	[Parent] [_]
		INNER JOIN [Child] [a_Children] ON [_].[ParentID] = [a_Children].[ParentID]

