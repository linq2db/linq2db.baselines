-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(0 AS INTEGER),
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 3
UNION ALL
SELECT
	CAST(1 AS INTEGER),
	[p_1].[ParentID],
	[p_1].[Value1]
FROM
	[Parent] [p_1]
WHERE
	[p_1].[ParentID] <= 3

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

