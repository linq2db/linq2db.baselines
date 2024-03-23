BeforeExecute
-- SqlServer.2014

SELECT
	[a_Children].[ParentID],
	[a_Children].[ChildID]
FROM
	[Parent] [_]
		INNER JOIN [Child] [a_Children] ON [_].[ParentID] = [a_Children].[ParentID]

