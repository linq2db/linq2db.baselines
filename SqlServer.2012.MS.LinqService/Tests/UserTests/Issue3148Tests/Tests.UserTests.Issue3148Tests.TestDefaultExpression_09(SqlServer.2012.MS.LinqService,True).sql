BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
		OUTER APPLY (
			SELECT TOP (1)
				NULL as [ParentID]
			FROM
				[GrandChild] [a_GrandChildren_1]
			WHERE
				[x].[ParentID] = [a_GrandChildren_1].[ParentID] AND
				[x].[ChildID] = [a_GrandChildren_1].[ChildID]
		) [t2]
WHERE
	NOT (([t1].[ParentID] = [t2].[ParentID] OR [t1].[ParentID] IS NULL AND [t2].[ParentID] IS NULL) AND NOT ([t1].[ParentID] IS NULL AND [t2].[ParentID] IS NOT NULL) AND NOT ([t1].[ParentID] IS NOT NULL AND [t2].[ParentID] IS NULL) AND ([t1].[ChildID] = [t2].[ParentID] OR [t1].[ChildID] IS NULL AND [t2].[ParentID] IS NULL) AND NOT ([t1].[ChildID] IS NULL AND [t2].[ParentID] IS NOT NULL) AND NOT ([t1].[ChildID] IS NOT NULL AND [t2].[ParentID] IS NULL) AND ([t1].[GrandChildID] = [t2].[ParentID] OR [t1].[GrandChildID] IS NULL AND [t2].[ParentID] IS NULL) AND NOT ([t1].[GrandChildID] IS NULL AND [t2].[ParentID] IS NOT NULL) AND NOT ([t1].[GrandChildID] IS NOT NULL AND [t2].[ParentID] IS NULL)) AND
	IIF([x].[ParentID] = (
		SELECT TOP (1)
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	), 0, 1) = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
		OUTER APPLY (
			SELECT TOP (1)
				NULL as [ParentID]
			FROM
				[GrandChild] [a_GrandChildren_1]
			WHERE
				[x].[ParentID] = [a_GrandChildren_1].[ParentID] AND
				[x].[ChildID] = [a_GrandChildren_1].[ChildID]
		) [t2]
WHERE
	NOT (([t1].[ParentID] = [t2].[ParentID] OR [t1].[ParentID] IS NULL AND [t2].[ParentID] IS NULL) AND NOT ([t1].[ParentID] IS NULL AND [t2].[ParentID] IS NOT NULL) AND NOT ([t1].[ParentID] IS NOT NULL AND [t2].[ParentID] IS NULL) AND ([t1].[ChildID] = [t2].[ParentID] OR [t1].[ChildID] IS NULL AND [t2].[ParentID] IS NULL) AND NOT ([t1].[ChildID] IS NULL AND [t2].[ParentID] IS NOT NULL) AND NOT ([t1].[ChildID] IS NOT NULL AND [t2].[ParentID] IS NULL) AND ([t1].[GrandChildID] = [t2].[ParentID] OR [t1].[GrandChildID] IS NULL AND [t2].[ParentID] IS NULL) AND NOT ([t1].[GrandChildID] IS NULL AND [t2].[ParentID] IS NOT NULL) AND NOT ([t1].[GrandChildID] IS NOT NULL AND [t2].[ParentID] IS NULL)) AND
	IIF([x].[ParentID] = (
		SELECT TOP (1)
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	), 0, 1) = 1

