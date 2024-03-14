BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Max((
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[t1].[ParentID] = [a_Children].[ParentID]
	))
FROM
	[Parent] [t1]

