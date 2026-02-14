-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			[l].[ParentID] + 1 as [Id]
		FROM
			[Child] [l]
		LIMIT 1
	)
FROM
	[Parent] [sep]

