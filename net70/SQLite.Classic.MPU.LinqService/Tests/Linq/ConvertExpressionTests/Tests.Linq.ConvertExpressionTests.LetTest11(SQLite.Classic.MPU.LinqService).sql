BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			[c_2].[ParentID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] > 0
		ORDER BY
			[c_2].[ParentID]
		LIMIT 1
	),
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ChildID] > -100
			ORDER BY
				[c_1].[ParentID]
			LIMIT 1
		) [t1] ON 1=1
ORDER BY
	[p].[ParentID]

