-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			[l].[ParentID] + 1
		FROM
			[Child] [l]
		LIMIT 1
	)
FROM
	[Parent] [sep]

