-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[c_1].[ChildID]
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
ORDER BY
	Coalesce(CASE
		WHEN [v_1].[not_null] IS NOT NULL THEN [p].[ParentID]
		ELSE NULL
	END, -1),
	[c_1].[ChildID]

