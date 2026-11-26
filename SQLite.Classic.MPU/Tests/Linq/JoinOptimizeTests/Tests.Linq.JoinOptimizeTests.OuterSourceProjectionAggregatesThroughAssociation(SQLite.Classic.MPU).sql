-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[c_1].[ChildID],
	(
		SELECT
			MAX(CASE
				WHEN [d].[not_null] IS NOT NULL THEN [p].[ParentID]
				ELSE NULL
			END)
		FROM
			(
				SELECT
					1 as [c1]
			) [t1]
				LEFT JOIN (
					SELECT
						1 as [not_null]
					FROM
						[GrandChild] [g_1]
					WHERE
						[c_1].[ParentID] = [g_1].[ParentID] AND [c_1].[ChildID] = [g_1].[ChildID]
				) [d] ON 1=1
	)
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

