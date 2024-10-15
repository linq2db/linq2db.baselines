BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
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
WHERE
	([t1].[ParentID] = [t1].[ParentID] OR [t1].[ParentID] IS NULL AND [t1].[ParentID] IS NULL OR [t1].[ChildID] = [t1].[ChildID] OR [t1].[ChildID] IS NULL AND [t1].[ChildID] IS NULL OR [t1].[GrandChildID] = [t1].[GrandChildID] OR [t1].[GrandChildID] IS NULL AND [t1].[GrandChildID] IS NULL) AND
	([x].[ParentID] <> (
		SELECT TOP (1)
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	) OR (
		SELECT TOP (1)
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	) IS NULL)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
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
WHERE
	([t1].[ParentID] = [t1].[ParentID] OR [t1].[ParentID] IS NULL AND [t1].[ParentID] IS NULL OR [t1].[ChildID] = [t1].[ChildID] OR [t1].[ChildID] IS NULL AND [t1].[ChildID] IS NULL OR [t1].[GrandChildID] = [t1].[GrandChildID] OR [t1].[GrandChildID] IS NULL AND [t1].[GrandChildID] IS NULL) AND
	([x].[ParentID] <> (
		SELECT TOP (1)
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	) OR (
		SELECT TOP (1)
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	) IS NULL)

