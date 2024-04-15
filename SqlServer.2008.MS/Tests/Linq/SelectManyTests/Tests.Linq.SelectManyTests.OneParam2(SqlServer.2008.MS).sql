BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[a_Children].[ParentID],
	[a_Children].[ChildID]
FROM
	[Parent] [t]
		INNER JOIN [Child] [a_Children] ON [t].[ParentID] = [a_Children].[ParentID]
WHERE
	[a_Children].[ParentID] = 1

