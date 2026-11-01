-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Coalesce((
		SELECT
			SUM([t1].[Entity])
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY [e].[ChildID] % 2 ORDER BY -[e].[ChildID]) as [RowNumber],
					[e].[ChildID] as [Entity]
				FROM
					(
						SELECT
							[g_1].[ChildID]
						FROM
							[Child] [g_1]
						WHERE
							[g_1].[ParentID] = [p].[ParentID]
					) [e]
				GROUP BY
					[p].[ParentID],
					[e].[ChildID]
			) [t1]
		WHERE
			[t1].[RowNumber] = 1
	), 0)
FROM
	[Parent] [p]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

