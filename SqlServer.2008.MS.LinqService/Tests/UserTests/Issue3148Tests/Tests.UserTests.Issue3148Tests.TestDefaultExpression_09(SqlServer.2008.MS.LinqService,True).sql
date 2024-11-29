BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
	NOT (([t1].[ParentID] = [t2].[ParentID] OR [t1].[ParentID] IS NULL AND [t2].[ParentID] IS NULL) AND ([t1].[ChildID] = [t2].[ChildID] OR [t1].[ChildID] IS NULL AND [t2].[ChildID] IS NULL) AND ([t1].[GrandChildID] = [t2].[GrandChildID] OR [t1].[GrandChildID] IS NULL AND [t2].[GrandChildID] IS NULL)) AND
	([x].[ParentID] <> (
		SELECT TOP (1)
			CASE
				WHEN [a_Children].[ChildID] IS NOT NULL THEN [a_Children].[ChildID]
				ELSE 0
			END
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	) OR (
		SELECT TOP (1)
			CASE
				WHEN [a_Children].[ChildID] IS NOT NULL THEN [a_Children].[ChildID]
				ELSE 0
			END
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	) IS NULL)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
	NOT (([t1].[ParentID] = [t2].[ParentID] OR [t1].[ParentID] IS NULL AND [t2].[ParentID] IS NULL) AND ([t1].[ChildID] = [t2].[ChildID] OR [t1].[ChildID] IS NULL AND [t2].[ChildID] IS NULL) AND ([t1].[GrandChildID] = [t2].[GrandChildID] OR [t1].[GrandChildID] IS NULL AND [t2].[GrandChildID] IS NULL)) AND
	([x].[ParentID] <> (
		SELECT TOP (1)
			CASE
				WHEN [a_Children].[ChildID] IS NOT NULL THEN [a_Children].[ChildID]
				ELSE 0
			END
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	) OR (
		SELECT TOP (1)
			CASE
				WHEN [a_Children].[ChildID] IS NOT NULL THEN [a_Children].[ChildID]
				ELSE 0
			END
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
	) IS NULL)

