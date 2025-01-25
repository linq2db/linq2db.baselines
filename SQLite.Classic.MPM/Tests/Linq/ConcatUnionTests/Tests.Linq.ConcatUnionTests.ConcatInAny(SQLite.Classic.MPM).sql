BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		UNION ALL
		SELECT
			[p_1].[ParentID]
		FROM
			[Parent] [p_1]
	)

