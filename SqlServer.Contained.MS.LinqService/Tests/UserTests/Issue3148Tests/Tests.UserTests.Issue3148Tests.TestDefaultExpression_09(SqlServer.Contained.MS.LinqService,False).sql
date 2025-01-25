BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_GrandChildren].[ParentID],
				[a_GrandChildren].[ChildID],
				[a_GrandChildren].[GrandChildID]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
		) [t1]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				[a_GrandChildren_1].[ParentID],
				[a_GrandChildren_1].[ChildID],
				[a_GrandChildren_1].[GrandChildID]
			FROM
				[GrandChild] [a_GrandChildren_1]
			WHERE
				[x].[ParentID] = [a_GrandChildren_1].[ParentID] AND
				[x].[ChildID] = [a_GrandChildren_1].[ChildID]
		) [t2]
WHERE
	NOT (([t2].[ParentID] = [t1].[ParentID] OR [t2].[ParentID] IS NULL AND [t1].[ParentID] IS NULL) AND ([t2].[ChildID] = [t1].[ChildID] OR [t2].[ChildID] IS NULL AND [t1].[ChildID] IS NULL) AND ([t2].[GrandChildID] = [t1].[GrandChildID] OR [t2].[GrandChildID] IS NULL AND [t1].[GrandChildID] IS NULL)) AND
	[x].[ParentID] <> (
		SELECT TOP (1)
			IIF([a_Children].[ChildID] IS NOT NULL, [a_Children].[ChildID], 0)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = [a_Children].[ParentID]
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_GrandChildren].[ParentID],
				[a_GrandChildren].[ChildID],
				[a_GrandChildren].[GrandChildID]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
		) [t1]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				[a_GrandChildren_1].[ParentID],
				[a_GrandChildren_1].[ChildID],
				[a_GrandChildren_1].[GrandChildID]
			FROM
				[GrandChild] [a_GrandChildren_1]
			WHERE
				[x].[ParentID] = [a_GrandChildren_1].[ParentID] AND
				[x].[ChildID] = [a_GrandChildren_1].[ChildID]
		) [t2]
WHERE
	NOT (([t2].[ParentID] = [t1].[ParentID] OR [t2].[ParentID] IS NULL AND [t1].[ParentID] IS NULL) AND ([t2].[ChildID] = [t1].[ChildID] OR [t2].[ChildID] IS NULL AND [t1].[ChildID] IS NULL) AND ([t2].[GrandChildID] = [t1].[GrandChildID] OR [t2].[GrandChildID] IS NULL AND [t1].[GrandChildID] IS NULL)) AND
	[x].[ParentID] <> (
		SELECT TOP (1)
			IIF([a_Children].[ChildID] IS NOT NULL, [a_Children].[ChildID], 0)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = [a_Children].[ParentID]
	)

