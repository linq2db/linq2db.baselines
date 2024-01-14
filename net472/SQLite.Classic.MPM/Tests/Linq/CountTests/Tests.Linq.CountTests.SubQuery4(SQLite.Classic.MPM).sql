BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Parent] [t1]
		WHERE
			[t1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

