BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			[c_1].[ParentID] + 1
		FROM
			[Child] [c_1]
		LIMIT 1
	)
FROM
	[Parent] [p]

