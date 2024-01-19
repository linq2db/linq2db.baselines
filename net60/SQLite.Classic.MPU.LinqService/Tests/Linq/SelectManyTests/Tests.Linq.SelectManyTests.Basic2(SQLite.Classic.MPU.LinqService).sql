BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [_]

