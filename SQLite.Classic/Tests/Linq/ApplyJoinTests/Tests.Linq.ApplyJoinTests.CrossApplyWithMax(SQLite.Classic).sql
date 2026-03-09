-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[c_2].[MaxChildID]
FROM
	[Parent] [p]
		INNER JOIN (
			SELECT
				MAX([c_1].[ChildID]) as [MaxChildID],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			GROUP BY
				[c_1].[ParentID]
		) [c_2] ON [c_2].[ParentID] = [p].[ParentID]

-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

