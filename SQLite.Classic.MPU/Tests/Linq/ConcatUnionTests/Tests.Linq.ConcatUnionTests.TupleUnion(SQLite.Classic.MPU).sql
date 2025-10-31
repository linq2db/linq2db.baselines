-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] > 3
UNION
SELECT
	[p2].[ParentID],
	[p2].[Value1]
FROM
	[Parent] [p2]
WHERE
	[p2].[ParentID] <= 3

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

