BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

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

