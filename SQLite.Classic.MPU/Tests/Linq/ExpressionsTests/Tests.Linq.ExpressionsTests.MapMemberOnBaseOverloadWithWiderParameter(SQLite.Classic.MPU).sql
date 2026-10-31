-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	CAST([p].[ParentID] AS INTEGER) = 1

