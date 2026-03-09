-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[c_2].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN (
			SELECT
				[c_1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [c_1].[ParentID] ORDER BY [c_1].[ChildID]) as [rn],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		) [c_2] ON [c_2].[ParentID] = [p].[ParentID] AND [c_2].[rn] = 1

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

