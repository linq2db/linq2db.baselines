-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [g1]
		WHERE
			[g1].[ParentID] = [p].[ParentID] AND EXISTS(
				SELECT
					*
				FROM
					[GrandChild] [g2]
				WHERE
					([g2].[GrandChildID] = [g1].[GrandChildID] OR [g2].[GrandChildID] IS NULL AND [g1].[GrandChildID] IS NULL) AND
					[g2].[ChildID] IS NOT NULL
			)
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

