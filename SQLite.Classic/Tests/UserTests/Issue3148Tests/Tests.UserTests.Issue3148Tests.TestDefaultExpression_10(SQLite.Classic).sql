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
		) [t1] ON [x].[ParentID] = [t1].[ParentID] AND [x].[ChildID] = [t1].[ChildID] AND [t1].[rn] <= 1
WHERE
	CASE
		WHEN [x].[ParentID] = (
			SELECT
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Parent].[ParentID] = [a_Children].[ParentID]
			LIMIT 1
		)
			THEN 0
		ELSE 1
	END

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
		) [t1] ON [x].[ParentID] = [t1].[ParentID] AND [x].[ChildID] = [t1].[ChildID] AND [t1].[rn] <= 1
WHERE
	CASE
		WHEN [x].[ParentID] = (
			SELECT
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Parent].[ParentID] = [a_Children].[ParentID]
			LIMIT 1
		)
			THEN 0
		ELSE 1
	END

