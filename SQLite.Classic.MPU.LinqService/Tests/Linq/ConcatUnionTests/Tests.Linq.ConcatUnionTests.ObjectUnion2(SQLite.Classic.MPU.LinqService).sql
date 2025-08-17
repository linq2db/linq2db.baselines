BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] > 3
UNION
SELECT
	NULL,
	NULL
FROM
	[Parent] [p2]
WHERE
	[p2].[ParentID] <= 3

