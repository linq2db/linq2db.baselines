-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1],
	[p2].[ParentID],
	[p2].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [t1]
		CROSS JOIN [Parent] [p2]
		INNER JOIN [Child] [c_1] ON [t1].[ParentID] = [c_1].[ParentID]
UNION
SELECT
	[t2].[ParentID],
	[t2].[Value1],
	[p2_1].[ParentID],
	[p2_1].[Value1],
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	[Parent] [t2]
		CROSS JOIN [Parent] [p2_1]
		INNER JOIN [Child] [c_2] ON [p2_1].[ParentID] = [c_2].[ParentID]

