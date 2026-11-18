-- SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	CAST(222 AS INTEGER),
	CAST(123 AS INTEGER)
FROM
	[Parent] [p]
UNION ALL
SELECT
	[p_1].[ParentID],
	CAST(222 AS INTEGER),
	CAST(234 AS INTEGER)
FROM
	[Parent] [p_1]
UNION ALL
SELECT
	[p_2].[ParentID],
	CAST(333 AS INTEGER),
	CAST(123 AS INTEGER)
FROM
	[Parent] [p_2]
UNION ALL
SELECT
	[p_3].[ParentID],
	CAST(333 AS INTEGER),
	CAST(234 AS INTEGER)
FROM
	[Parent] [p_3]

-- SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

