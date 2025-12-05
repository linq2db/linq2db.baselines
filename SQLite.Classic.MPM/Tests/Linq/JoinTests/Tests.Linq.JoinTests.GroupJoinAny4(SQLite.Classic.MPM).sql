-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [p]

