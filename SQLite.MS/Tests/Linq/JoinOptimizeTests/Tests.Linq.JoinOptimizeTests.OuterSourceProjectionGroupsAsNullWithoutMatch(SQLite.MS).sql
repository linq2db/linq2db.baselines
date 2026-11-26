-- SQLite.MS SQLite
SELECT
	[gr_1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN [v_1].[v] IS NOT NULL THEN [gr].[ParentID]
				ELSE NULL
			END as [Key_1]
		FROM
			[Parent] [gr]
				CROSS JOIN [Child] [c_1]
				LEFT JOIN (
					SELECT
						1 as [v],
						[v].[ChildID]
					FROM
						[GrandChild] [v]
				) [v_1] ON [v_1].[ChildID] = [c_1].[ChildID]
		WHERE
			[c_1].[ParentID] = [gr].[ParentID]
	) [gr_1]
GROUP BY
	[gr_1].[Key_1]

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

