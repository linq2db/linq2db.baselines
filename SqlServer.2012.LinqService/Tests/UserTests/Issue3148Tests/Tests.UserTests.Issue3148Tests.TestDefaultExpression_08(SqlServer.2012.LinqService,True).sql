BeforeExecute
-- SqlServer.2012

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				0 as [ParentID],
				NULL as [Value1]
			FROM
				[GrandChild] [a_GrandChildren]
					LEFT JOIN [Child] [a_Child] ON [a_GrandChildren].[ParentID] = [a_Child].[ParentID] AND [a_GrandChildren].[ChildID] = [a_Child].[ChildID]
					LEFT JOIN [Parent] [a_Parent_1] ON [a_Child].[ParentID] = [a_Parent_1].[ParentID]
			WHERE
				[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
		) [t1]
WHERE
	NOT (([a_Parent].[ParentID] = [t1].[ParentID] OR [a_Parent].[ParentID] IS NULL AND [t1].[ParentID] IS NULL) AND NOT ([a_Parent].[ParentID] IS NULL AND [t1].[ParentID] IS NOT NULL) AND NOT ([a_Parent].[ParentID] IS NOT NULL AND [t1].[ParentID] IS NULL) AND ([a_Parent].[Value1] = [t1].[Value1] OR [a_Parent].[Value1] IS NULL AND [t1].[Value1] IS NULL) AND NOT ([a_Parent].[Value1] IS NULL AND [t1].[Value1] IS NOT NULL) AND NOT ([a_Parent].[Value1] IS NOT NULL AND [t1].[Value1] IS NULL)) AND
	IIF([x].[ParentID] = (
		SELECT TOP (1)
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	), 0, 1) = 1

BeforeExecute
-- SqlServer.2012

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				0 as [ParentID],
				NULL as [Value1]
			FROM
				[GrandChild] [a_GrandChildren]
					LEFT JOIN [Child] [a_Child] ON [a_GrandChildren].[ParentID] = [a_Child].[ParentID] AND [a_GrandChildren].[ChildID] = [a_Child].[ChildID]
					LEFT JOIN [Parent] [a_Parent_1] ON [a_Child].[ParentID] = [a_Parent_1].[ParentID]
			WHERE
				[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
		) [t1]
WHERE
	NOT (([a_Parent].[ParentID] = [t1].[ParentID] OR [a_Parent].[ParentID] IS NULL AND [t1].[ParentID] IS NULL) AND NOT ([a_Parent].[ParentID] IS NULL AND [t1].[ParentID] IS NOT NULL) AND NOT ([a_Parent].[ParentID] IS NOT NULL AND [t1].[ParentID] IS NULL) AND ([a_Parent].[Value1] = [t1].[Value1] OR [a_Parent].[Value1] IS NULL AND [t1].[Value1] IS NULL) AND NOT ([a_Parent].[Value1] IS NULL AND [t1].[Value1] IS NOT NULL) AND NOT ([a_Parent].[Value1] IS NOT NULL AND [t1].[Value1] IS NULL)) AND
	IIF([x].[ParentID] = (
		SELECT TOP (1)
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	), 0, 1) = 1

