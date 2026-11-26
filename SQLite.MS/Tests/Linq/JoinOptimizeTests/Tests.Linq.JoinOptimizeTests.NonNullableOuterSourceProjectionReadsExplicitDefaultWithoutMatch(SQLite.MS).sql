-- SQLite.MS SQLite
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [v_1].[not_null] IS NOT NULL THEN [p].[ParentID]
		ELSE -1
	END
FROM
	[Parent] [p]
		CROSS JOIN [Child] [c_1]
		LEFT JOIN (
			SELECT
				1 as [not_null],
				[v].[ChildID]
			FROM
				[GrandChild] [v]
		) [v_1] ON [v_1].[ChildID] = [c_1].[ChildID]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

