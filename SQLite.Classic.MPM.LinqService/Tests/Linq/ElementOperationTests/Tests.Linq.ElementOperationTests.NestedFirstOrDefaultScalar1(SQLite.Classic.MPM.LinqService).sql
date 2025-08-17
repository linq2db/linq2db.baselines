BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	(
		SELECT
			[t1].[ChildID]
		FROM
			[Child] [t1]
		LIMIT 1
	)
FROM
	[Parent] [p]

