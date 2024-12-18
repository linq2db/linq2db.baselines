﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		LEFT JOIN (
			SELECT
				[a_GrandChildren].[ParentID],
				[a_GrandChildren].[ChildID],
				[a_GrandChildren].[GrandChildID],
				ROW_NUMBER() OVER (PARTITION BY [a_GrandChildren].[ParentID], [a_GrandChildren].[ChildID] ORDER BY [a_GrandChildren].[ParentID]) as [rn]
			FROM
				[GrandChild] [a_GrandChildren]
		) [t1] ON [x].[ParentID] = [t1].[ParentID] AND [t1].[ParentID] IS NOT NULL AND [x].[ChildID] = [t1].[ChildID] AND [t1].[ChildID] IS NOT NULL AND [t1].[rn] <= 1
WHERE
	([t1].[ParentID] = [t1].[ParentID] AND [t1].[ParentID] IS NOT NULL AND [t1].[ParentID] IS NOT NULL OR [t1].[ParentID] IS NULL AND [t1].[ParentID] IS NULL OR [t1].[ChildID] = [t1].[ChildID] AND [t1].[ChildID] IS NOT NULL AND [t1].[ChildID] IS NOT NULL OR [t1].[ChildID] IS NULL AND [t1].[ChildID] IS NULL OR [t1].[GrandChildID] = [t1].[GrandChildID] AND [t1].[GrandChildID] IS NOT NULL AND [t1].[GrandChildID] IS NOT NULL OR [t1].[GrandChildID] IS NULL AND [t1].[GrandChildID] IS NULL) AND
	([x].[ParentID] <> (
		SELECT
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
		LIMIT 1
	) OR (
		SELECT
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
		LIMIT 1
	) IS NULL)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		LEFT JOIN (
			SELECT
				[a_GrandChildren].[ParentID],
				[a_GrandChildren].[ChildID],
				[a_GrandChildren].[GrandChildID],
				ROW_NUMBER() OVER (PARTITION BY [a_GrandChildren].[ParentID], [a_GrandChildren].[ChildID] ORDER BY [a_GrandChildren].[ParentID]) as [rn]
			FROM
				[GrandChild] [a_GrandChildren]
		) [t1] ON [x].[ParentID] = [t1].[ParentID] AND [t1].[ParentID] IS NOT NULL AND [x].[ChildID] = [t1].[ChildID] AND [t1].[ChildID] IS NOT NULL AND [t1].[rn] <= 1
WHERE
	([t1].[ParentID] = [t1].[ParentID] AND [t1].[ParentID] IS NOT NULL AND [t1].[ParentID] IS NOT NULL OR [t1].[ParentID] IS NULL AND [t1].[ParentID] IS NULL OR [t1].[ChildID] = [t1].[ChildID] AND [t1].[ChildID] IS NOT NULL AND [t1].[ChildID] IS NOT NULL OR [t1].[ChildID] IS NULL AND [t1].[ChildID] IS NULL OR [t1].[GrandChildID] = [t1].[GrandChildID] AND [t1].[GrandChildID] IS NOT NULL AND [t1].[GrandChildID] IS NOT NULL OR [t1].[GrandChildID] IS NULL AND [t1].[GrandChildID] IS NULL) AND
	([x].[ParentID] <> (
		SELECT
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
		LIMIT 1
	) OR (
		SELECT
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[a_Parent].[ParentID] = [a_Children].[ParentID]
		LIMIT 1
	) IS NULL)

