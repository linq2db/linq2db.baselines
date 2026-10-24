-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	[x].[Value1] <> 1 OR [x].[Value1] IS NULL

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	NOT ([x].[Value1] = 1 AND [x].[Value1] IS NOT NULL)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	NOT ([x].[Value1] = 1 AND [x].[Value1] IS NOT NULL)

