-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= 3
	)

