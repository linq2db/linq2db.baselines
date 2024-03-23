BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [p]
		LEFT JOIN [Child] [a_Child] ON ([p].[ParentID] = [a_Child].[ParentID] OR [p].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([p].[ChildID] = [a_Child].[ChildID] OR [p].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = [a_Children].[ParentID]
			ORDER BY
				[a_Children].[ChildID]
		) [t1]
WHERE
	[p].[ChildID] > 0

